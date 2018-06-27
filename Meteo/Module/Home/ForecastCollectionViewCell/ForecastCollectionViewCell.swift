//
//  ForecastCollectionViewCell.swift
//  Meteo
//
//  Created by Julien CLOUPET on 07/11/2017.
//  Copyright © 2017 Pr0g. All rights reserved.
//

import UIKit
import Reusable

final class ForecastCollectionViewCell: UICollectionViewCell, NibReusable {
    // Mark:- IBOutlets
    @IBOutlet fileprivate weak var hour: UILabel!
    @IBOutlet fileprivate weak var temp: UILabel!
    @IBOutlet fileprivate weak var icon: UIImageView!
    @IBOutlet fileprivate weak var tempMax: UILabel!
    @IBOutlet fileprivate weak var tempMin: UILabel!
    
    // Mark:- Public fun
    func fill(measure: [Measure]?) {
        let temp = Int(measure?.compactMap { $0.main?.degreeTemp }.average ?? 0)
        let tempMin = measure?.compactMap { $0.main?.tempMinDegree }.sorted()
        let tempMax = measure?.compactMap { $0.main?.tempMaxDegree }.sorted()
        
        self.temp.text = "\(temp)ºC"
        self.hour.text = measure?.first?.weekDay.uppercased()
        self.icon.image = measure?.first?.weather.first?.image
        self.tempMax.text = "\(tempMax?.last ?? 0)ºC"
        self.tempMin.text = "\(tempMin?.first ?? 0)ºC"
    }
}
