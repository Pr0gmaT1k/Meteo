//
//  FirstViewController.swift
//  Meteo
//
//  Created by Julien CLOUPET on 08/11/2017.
//  Copyright © 2017 Pr0g. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
  
  // Mark:- IBOutlets
  @IBOutlet fileprivate weak var firstContentView: UIView!
  @IBOutlet fileprivate weak var collectionView: UICollectionView!
  
  // Mark:- Override
  override func viewDidLoad() {
    super.viewDidLoad()
    
    // CollectionView
    self.collectionView.dataSource = self
    self.collectionView.delegate = self
    self.collectionView.register(cellType: ForecastCollectionViewCell.self)
  }
  
  override func viewDidAppear(_ animated: Bool) {
    super.viewDidAppear(animated)
    // Gradient for first content view
    let gradient = CAGradientLayer()
    gradient.frame = firstContentView.bounds
    gradient.colors = [UIColor.clear.cgColor, UIColor.black.withAlphaComponent(0.4).cgColor]
    firstContentView.layer.insertSublayer(gradient, at: 0)
  }
}


// Mark:- UICollectionViewDataSource
extension FirstViewController: UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
  func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    let cell = collectionView.dequeueReusableCell(for: indexPath) as ForecastCollectionViewCell
    cell.fill()
    return cell
  }
  
  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return 10
  }
  
  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
    let cellsize = self.collectionView.bounds.size.height
    return CGSize(width: cellsize / 2, height:cellsize)
  }
}
