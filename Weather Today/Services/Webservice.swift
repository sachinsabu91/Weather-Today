//
//  Webservice.swift
//  Weather Today
//
//  Created by Sachin Sabu on 19/03/19.
//  Copyright © 2019 utilityappstudio. All rights reserved.
//

import Foundation
struct Resource<T> {
    let url:URL
    let parse: (Data)-> T?
}
final class Webservice {
    func load<T>(resource: Resource<T>, completion: @escaping(T?) -> ()){
        URLSession.shared.dataTask(with: resource.url){ data, response, error in
           
            if let datavalue = data {
                 print(datavalue)
                DispatchQueue.main.async {
                    completion(resource.parse(datavalue))
                }
            } else{
                completion(nil)
            }
        }.resume()
    }
}
