//
//  OpenWeatherRoute.swift
//  Meteo
//
//  Created by Julien CLOUPET on 10/11/2017.
//  Copyright © 2017 Pr0g. All rights reserved.
//

import NetworkStack

public enum OWRoute: Routable {
  case forecastByCity(name: String)
  
  public var path: String {
    switch self {
    case .forecastByCity(name: let name): return self.route(route: "/data/2.5/forecast?q=\(name)")
    }
  }
  
  private func route(route: String) -> String {
    return route + "&appid=\(Environment.OpenWeather.openWeatherKey)"
  }
}
