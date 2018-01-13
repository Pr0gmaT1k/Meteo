//
//  SecondViewController.swift
//  Meteo
//
//  Created by Julien CLOUPET on 08/11/2017.
//  Copyright © 2017 Pr0g. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
  // Mark:- IBOutlets
  @IBOutlet fileprivate weak var detailsLabel: UILabel!
  @IBOutlet fileprivate weak var detailsTableView: UITableView!
  
  // Mark:- Override
  override func viewDidLoad() {
    super.viewDidLoad()
    
    // Label
    self.detailsLabel.text = L10n.detailsTitle
    
    // TableView
    self.detailsTableView.dataSource = self
    self.detailsTableView.register(cellType: DetailsTableViewCell.self)
    self.detailsTableView.rowHeight = 50
  }
}

extension SecondViewController: UITableViewDataSource {
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = self.detailsTableView.dequeueReusableCell(for: indexPath) as DetailsTableViewCell
    return cell
  }
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 5
  }
}
