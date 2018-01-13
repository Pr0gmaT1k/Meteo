//
//  ForecastCollectionViewCell.swift
//  Meteo
//
//  Created by Julien CLOUPET on 07/11/2017.
//  Copyright © 2017 Pr0g. All rights reserved.
//

import UIKit
import Reusable

class ForecastCollectionViewCell: UICollectionViewCell, NibReusable {
  // Mark:- IBOutlets
  @IBOutlet fileprivate weak var hour: UILabel!
  @IBOutlet fileprivate weak var temp: UILabel!
  @IBOutlet fileprivate weak var icon: UIImageView!
  
  
  // Mark:- Overrride
  override func awakeFromNib() {
    super.awakeFromNib()
  }
  
  // Mark:- Public fun
  func fill() {
    
  }
}
