//
//  FirstViewController.swift
//  Meteo
//
//  Created by Julien CLOUPET on 08/11/2017.
//  Copyright © 2017 Pr0g. All rights reserved.
//

import UIKit
import RealmSwift

final class FirstViewController: UIViewController {
    
    // MARK:- IBOutlets
    @IBOutlet fileprivate weak var firstContentView: UIView!
    @IBOutlet fileprivate weak var collectionView: UICollectionView!
    @IBOutlet fileprivate weak var degLabel: UILabel!
    @IBOutlet fileprivate weak var weatherImage: UIImageView!
    @IBOutlet fileprivate weak var descLabel: UILabel!
    @IBOutlet fileprivate weak var tempMin: UILabel!
    @IBOutlet fileprivate weak var tempMax: UILabel!
    
    // MARK:- Properties
    fileprivate let realm = Realm.safeInstance()
    fileprivate var currentWeatherToken: NotificationToken?
    fileprivate var threeHourForecastToken: NotificationToken?
    fileprivate var dailyForecast: [[Measure]]?
    fileprivate var currentWeathers: Results<CurrentWeather>?
    
    // MARK:- Override
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // CollectionView
        self.collectionView.dataSource = self
        self.collectionView.delegate = self
        self.collectionView.register(cellType: ForecastCollectionViewCell.self)
        self.collectionView.allowsSelection = false
        
        // Data
        let threeHourForecasts = realm.objects(ThreeHourForecast.self)
        self.dailyForecast = threeHourForecasts.first?.groupByDay
        threeHourForecastToken = threeHourForecasts.addNotificationBlock {[weak self] (changes: RealmCollectionChange) in
            guard let threeHourForecasts = self?.realm.objects(ThreeHourForecast.self) else { return }
            self?.dailyForecast = threeHourForecasts.first?.groupByDay
            self?.collectionView.reloadData()
        }
        
        self.update()
        currentWeatherToken = self.currentWeathers?.addNotificationBlock {[weak self] (changes: RealmCollectionChange) in
            self?.update()
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        // Gradient for first content view
        let gradient = CAGradientLayer()
        gradient.frame = firstContentView.bounds
        gradient.colors = [UIColor.clear.cgColor, UIColor.black.withAlphaComponent(0.4).cgColor]
        firstContentView.layer.insertSublayer(gradient, at: 0)
    }
    
    fileprivate func update() {
        self.currentWeathers = self.realm.objects(CurrentWeather.self)
        self.descLabel.text = currentWeathers?.first?.weather.first?.descriptionn?.capitalized
        self.degLabel.text = currentWeathers?.first?.main?.degreeTempString
        self.weatherImage.image = currentWeathers?.first?.weather.first?.image
    }
}


// MARK:- UICollectionViewDataSource
extension FirstViewController: UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(for: indexPath) as ForecastCollectionViewCell
        let measure = dailyForecast?[indexPath.row]
        cell.fill(measure: measure)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dailyForecast?.count ?? 0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let cellsize = self.collectionView.bounds.size.height
        return CGSize(width: 120, height: cellsize)
    }
}
