//
//  Weather+Utils.swift
//  Meteo
//
//  Created by azerty on 06/06/2018.
//  Copyright © 2018 Pr0g. All rights reserved.
//

import UIKit

extension Measure {
    var date: Date? {
        guard let tmstp = self.dt.value else { return nil }
        return Date.init(timeIntervalSince1970: TimeInterval(tmstp))
    }
    
    var weekDay: String {
        guard let date = self.date else { return "" }
        return DateFormatter().weekdaySymbols[Calendar.current.component(.weekday, from: date) - 1]
    }
    
    var formattedWeekDay: String {
        return "\(self.weekDay[0...2])".uppercased()
    }
    
    var formattedHour: String {
        guard let date = self.date else { return "" }
        let formatter = DateFormatter()
        formatter.dateFormat = "hh a"
        return formatter.string(from: date)
    }
}
