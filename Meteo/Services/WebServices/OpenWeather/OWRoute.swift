//
//  OpenWeatherRoute.swift
//  Meteo
//
//  Created by Julien CLOUPET on 10/11/2017.
//  Copyright © 2017 Pr0g. All rights reserved.
//

import NetworkStack

public enum OWRoute: Routable {
    case threeHourForecast(city: String)
    case sixteenDaysForecast(city: String)
    case currentWeather(city: String)
    
    public var path: String {
        switch self {
        case .threeHourForecast(city: let city): return self.route(route: "/data/2.5/forecast?q=\(city)")
        case .sixteenDaysForecast(city: let city): return self.route(route: "/data/2.5/forecast/daily?q=\(city)")
        case .currentWeather(city: let city): return self.route(route: "/data/2.5/weather?q=\(city)")
        }
    }
    
    private func route(route: String) -> String {
        return route + "&appid=\(Environment.OpenWeather.openWeatherKey)"
    }
}
