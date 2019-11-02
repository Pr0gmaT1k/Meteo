//
//  OWWebServiceClient.swift
//  Meteo
//
//  Created by Julien CLOUPET on 10/11/2017.
//  Copyright © 2017 Pr0g. All rights reserved.
//

import RxSwift
import Alamofire
import NetworkStack

final class OWWebServiceClient {
    // MARK: - Properties
    private let decoder = JSONDecoder()
    fileprivate static let keychainService = KeychainService(serviceType: Environment.OpenWeather.appName)
    fileprivate static let networkStack = NetworkStack(baseURL: Environment.OpenWeather.baseURL,
                                                       keychainService: keychainService)
    
    
    // Mark:- Services
    func threeHoursForecast(city: String) -> Observable<ThreeHourForecast?> {
        let requestParameters = RequestParameters(method: .get,
                                                  route: OWRoute.threeHourForecast(city: city))
        
        return OWWebServiceClient.networkStack.sendRequestWithDataResponse(requestParameters: requestParameters)
            .map({ (_, data) -> ThreeHourForecast? in
                return try? self.decoder.decode(ThreeHourForecast.self, from: data)
            })
    }

    // Not available in the free subscription plan
    func sixteenDaysForecast(city: String) -> Observable<DailyForecast?> {
        let requestParameters = RequestParameters(method: .get,
                                                  route: OWRoute.sixteenDaysForecast(city: city))

        return OWWebServiceClient.networkStack.sendRequestWithDataResponse(requestParameters: requestParameters)
            .map({ (_, data) -> DailyForecast? in
                return try? self.decoder.decode(DailyForecast.self, from: data)
            })
    }
    
    func currentWeather(city: String) -> Observable<CurrentWeather?> {
        let requestParameters = RequestParameters(method: .get,
                                                  route: OWRoute.currentWeather(city: city))
        
        return OWWebServiceClient.networkStack.sendRequestWithDataResponse(requestParameters: requestParameters)
            .map({ (_, data) -> CurrentWeather? in
                return try? self.decoder.decode(CurrentWeather.self, from: data)
            })
    }
}
