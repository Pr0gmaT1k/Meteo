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
import ObjectMapper

final class OWWebServiceClient {
    // MARK: - Properties
    fileprivate static let keychainService = KeychainService(serviceType: Environment.OpenWeather.appName)
    fileprivate static let networkStack = NetworkStack(baseURL: Environment.OpenWeather.baseURL,
                                                       keychainService: keychainService)
    
    
    // Mark:- Services
    func threeHoursForecast(city: String) -> Observable<ThreeHourForecast?> {
        let requestParameters = RequestParameters(method: .get,
                                                  route: OWRoute.threeHourForecast(city: city))
        
        return OWWebServiceClient.networkStack.sendRequestWithJSONResponse(requestParameters: requestParameters)
            .map({ (_, json) -> ThreeHourForecast? in
                return Mapper<ThreeHourForecast>().map(JSONObject: json)
            })
    }

    // Not available in the free subscription plan
    func sixteenDaysForecast(city: String) -> Observable<DailyForecast?> {
        let requestParameters = RequestParameters(method: .get,
                                                  route: OWRoute.sixteenDaysForecast(city: city))

        return OWWebServiceClient.networkStack.sendRequestWithJSONResponse(requestParameters: requestParameters)
            .map({ (_, json) -> DailyForecast? in
                return Mapper<DailyForecast>().map(JSONObject: json)
            })
    }
    
    func currentWeather(city: String) -> Observable<CurrentWeather?> {
        let requestParameters = RequestParameters(method: .get,
                                                  route: OWRoute.currentWeather(city: city))
        
        return OWWebServiceClient.networkStack.sendRequestWithJSONResponse(requestParameters: requestParameters)
            .map({ (_, json) -> CurrentWeather? in
                return Mapper<CurrentWeather>().map(JSONObject: json)
            })
    }
}
