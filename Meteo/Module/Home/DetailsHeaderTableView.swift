//
//  DetailsHeaderTableViewCell.swift
//  Meteo
//
//  Created by azerty on 07/06/2018.
//  Copyright © 2018 Pr0g. All rights reserved.
//

import UIKit
import Reusable

final class DetailsHeaderTableView: UIView, NibOwnerLoadable {
    // MARK:- IBOutlets
    @IBOutlet fileprivate weak var titleLabel: UILabel!
    
    // MARK:- INIT
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        DetailsHeaderTableView.loadFromNib(owner: self)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        DetailsHeaderTableView.loadFromNib(owner: self)
    }
    
    func fill(title: String?) {
        self.titleLabel.text = title
    }
}
