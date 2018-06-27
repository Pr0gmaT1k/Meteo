//
//  SecondViewController.swift
//  Meteo
//
//  Created by Julien CLOUPET on 08/11/2017.
//  Copyright © 2017 Pr0g. All rights reserved.
//

import UIKit
import RealmSwift

final class SecondViewController: UIViewController {
    // MARK:- IBOutlets
    @IBOutlet fileprivate weak var detailsTableView: UITableView!
    
    // MARK:- Properties
    fileprivate let realm = Realm.safeInstance()
    fileprivate var threeHourForecastToken: NotificationToken?
    fileprivate var forecasts: [[Measure]]?
    
    // MARK:- Override
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // TableView
        self.detailsTableView.dataSource = self
        self.detailsTableView.delegate = self
        self.detailsTableView.register(cellType: DetailsTableViewCell.self)
        self.detailsTableView.rowHeight = 50
        self.detailsTableView.allowsSelection = false
        self.detailsTableView.sectionHeaderHeight = 40
        
        // Data
        let threeHourForecasts = realm.objects(ThreeHourForecast.self)
        self.forecasts = threeHourForecasts.first?.groupByDay
        threeHourForecastToken = threeHourForecasts.addNotificationBlock {[weak self] (changes: RealmCollectionChange) in
            guard let threehour = self?.realm.objects(ThreeHourForecast.self) else { return }
            self?.forecasts = threehour.first?.groupByDay
            self?.detailsTableView.reloadData()
        }
    }
}

// MARK:- UITableViewDataSource
extension SecondViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.detailsTableView.dequeueReusableCell(for: indexPath) as DetailsTableViewCell
        cell.fill(measure: forecasts?[indexPath.section][indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return forecasts?[section].count ?? 0
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let header = DetailsHeaderTableView()
        header.fill(title: forecasts?[section].first?.weekDay.uppercased())
        return header
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return forecasts?.count ?? 0
    }
}
