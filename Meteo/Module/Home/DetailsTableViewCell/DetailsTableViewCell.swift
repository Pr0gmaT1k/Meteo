//
//  DetailsTableViewCell.swift
//  Meteo
//
//  Created by Julien CLOUPET on 08/11/2017.
//  Copyright © 2017 Pr0g. All rights reserved.
//

import UIKit
import Reusable

class DetailsTableViewCell: UITableViewCell, NibReusable {
  // Mark:- IBOutlets
  @IBOutlet fileprivate weak var imAge: UIImageView!
  @IBOutlet fileprivate weak var title: UILabel!
  @IBOutlet fileprivate weak var value: UILabel!
  
  // Mark:- Override
  override func awakeFromNib() {
    super.awakeFromNib()
  }
  
  func fill(image: UIImage, title: String, value: String) {
    self.imAge.image = image
    self.title.text = title
    self.value.text = value
  }
}
