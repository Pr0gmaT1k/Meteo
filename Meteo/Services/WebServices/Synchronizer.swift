//
//  Synchronizer.swift
//  Meteo
//
//  Created by azerty on 04/06/2018.
//  Copyright © 2018 Pr0g. All rights reserved.
//

import RxSwift
import RealmSwift

struct Synchronizer {
    private let owClient = OWWebServiceClient()
    private let realm = Realm.safeInstance()
    private let disposeBag = DisposeBag()
    private let cityToSync = "Rennes"
    
    /// Sync Current weather, daily forecast, three hour forecast for Rennes and save in realm
    public func sync() {
        // TODO: throw error instead of logging it.
        
        // Current weather
        owClient.currentWeather(city: cityToSync)
            .observeOn(MainScheduler.instance)
            .subscribe { event in
                switch event {
                case .completed: break
                case .next(let currentWeather):
                    guard let currentWeather = currentWeather else { break }
                    _ = try? self.realm.write {
                        // No background update || data continuation check
                        // Remove all Three hour object and replace by the new
                        self.realm.delete(self.realm.objects(CurrentWeather.self))
                        self.realm.add(currentWeather, update: true)
                    }
                case .error(let error): print(error)
                }
            }.addDisposableTo(disposeBag)
        
        // Three Hour Forecast
        owClient.threeHoursForecast(city: cityToSync)
        .observeOn(MainScheduler.instance)
        .subscribe { event in
            switch event {
            case .completed: break
            case .next(let forecast):
                guard let forecast = forecast else { break }
                _ = try? self.realm.write {
                    // No background update || data continuation check
                    // Remove all Three hour object and replace by the new
                    self.realm.delete(self.realm.objects(ThreeHourForecast.self))
                    self.realm.add(forecast, update: true)
                }
            case .error(let error): print(error)
            }
        }.addDisposableTo(disposeBag)
    }
}
