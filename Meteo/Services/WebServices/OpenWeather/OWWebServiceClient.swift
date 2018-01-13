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
  fileprivate static let keychainService = KeychainService(serviceType: Environment.OpenWeather.appName)
  fileprivate static let networkStack = NetworkStack(baseURL: Environment.OpenWeather.baseURL,
                                  keychainService: keychainService)
 
  
  // Mark:- Services
  func threeHoursForecastByCity(name: String) -> Observable<Void> {
    let requestParameters = RequestParameters(method: .get,
                                              route: OWRoute.forecastByCity(name: name))
    
    return OWWebServiceClient.networkStack.sendRequestWithJSONResponse(requestParameters: requestParameters)
      .map({ (_, json) -> Void in
        print(json)
      })
  }
}
