//
//  ThreeHourForecast+Utils.swift
//  Meteo
//
//  Created by azerty on 06/06/2018.
//  Copyright © 2018 Pr0g. All rights reserved.
//

import UIKit

extension ThreeHourForecast {
    var groupByDay: [[Measure]] {
        return self.list.group { $0.weekDay }
            .compactMap { $0.value }
            .sorted { $0.first?.dt.value ?? 0 < $1.first?.dt.value ?? 0 }
    }
}
