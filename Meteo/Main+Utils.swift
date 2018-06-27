//
//  Main+Utils.swift
//  Meteo
//
//  Created by azerty on 06/06/2018.
//  Copyright © 2018 Pr0g. All rights reserved.
//

import UIKit

extension Main {
    var degreeTemp: Int {
        return Int((self.temp.value ?? 273.15) - 273.15)
    }
    
    var degreeTempString: String {
        return "\(degreeTemp)ºC"
    }
    
    var tempMinDegree: Int {
        return Int((self.temp_min.value ?? 273.15) - 273.15)
    }
    
    var tempMinString: String {
        return "\(degreeTemp)ºC"
    }
    
    var tempMaxDegree: Int {
        return Int((self.temp_max.value ?? 273.15) - 273.15)
    }
    
    var tempMaxString: String {
        return "\(degreeTemp)ºC"
    }
}
