//
//  DetailsTableViewCell.swift
//  Meteo
//
//  Created by Julien CLOUPET on 08/11/2017.
//  Copyright © 2017 Pr0g. All rights reserved.
//

import UIKit
import Reusable

final class DetailsTableViewCell: UITableViewCell, NibReusable {
    // Mark:- IBOutlets
    @IBOutlet private weak var hour: UILabel!
    @IBOutlet private weak var temp: UILabel!
    @IBOutlet private weak var rain: UILabel!
    @IBOutlet private weak var pressure: UILabel!
    @IBOutlet private weak var humidity: UILabel!
    @IBOutlet private weak var weatherImage: UIImageView!
    
    // Mark:- Override
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func fill(measure: Measure?) {
        guard let measure = measure else { return }
        hour.text = measure.formattedHour
        temp.text = measure.main?.degreeTempString
        rain.text = String(format: "%.1f mm", measure.rain?.threeHour.value ?? 0)
        pressure.text = "\(Int(measure.main?.pressure.value ?? 0)) hPa"
        humidity.text = "\(measure.main?.humidity.value ?? 0)%"
        weatherImage.image = measure.weather.first?.image
    }
}
