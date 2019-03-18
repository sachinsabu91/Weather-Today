//
//  AddWeatherCityViewController.swift
//  Weather Today
//
//  Created by Sachin Sabu on 14/03/19.
//  Copyright © 2019 utilityappstudio. All rights reserved.
//

import Foundation
import UIKit
class AddWeatherCityViewController: UIViewController{
    @IBOutlet weak var cityNameTextField: UITextField!
    @IBAction func saveCityButtonTapped() {
        
    }
    @IBAction func close() {
        self.dismiss(animated: true, completion: nil)
    }
}
