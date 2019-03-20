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
        if let city = cityNameTextField.text{
            let weatherUrl = URL(string: "https://api.openweathermap.org/data/2.5/weather?q=\(city),uk&APPID=420a8d0df8d6670a8d140cec55e920f0&units=SI")!
            let weatherResource = Resource<Any>(url:weatherUrl) { data in
                return data
            }
            Webservice().load(resource: weatherResource) {
                result in
                
            }
        }
    }
    @IBAction func close() {
        self.dismiss(animated: true, completion: nil)
    }
}
