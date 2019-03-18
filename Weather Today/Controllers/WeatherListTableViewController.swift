//
//  WeatherListTableViewController.swift
//  Weather Today
//
//  Created by Sachin Sabu on 14/03/19.
//  Copyright © 2019 utilityappstudio. All rights reserved.
//

import Foundation
import UIKit
class WeatherListTableViewController: UITableViewController{
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.prefersLargeTitles = true
    }
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WeatherCell", for: indexPath) as! WeatherCell
        cell.cityNameLabel.text = "Kochi"
        cell.temperatureLabel.text = "24°"
        return cell
    }
}
