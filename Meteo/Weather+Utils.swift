//
//  Weather+Utils.swift
//  Meteo
//
//  Created by azerty on 06/06/2018.
//  Copyright © 2018 Pr0g. All rights reserved.
//

import UIKit

extension Weather {
    var image: UIImage {
        guard let icon = self.icon, let image = UIImage(named: icon) else { return UIImage() }
        return image
    }
}
