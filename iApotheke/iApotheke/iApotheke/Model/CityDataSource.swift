//
//  CityDataSource.swift
//  iApotheke
//
//  Created by user on 18.11.2019.
//  Copyright © 2019 Kazim Okan Akgül. All rights reserved.
//

import Foundation

protocol CityDataSourceDelegate {
    func cityListLoaded (cityList: [City])
}

class CityDataSource {
    var delegate: CityDataSourceDelegate?
    let mainURL = "https://koc.api.staging.tarentum.io"
    
    func loadListOfCity() {
        let session = URLSession.shared
        if let url = URL(string: "\(mainURL)/city") {
            var request = URLRequest(url: url)
            request.httpMethod = "GET"
            request.addValue("application/json", forHTTPHeaderField: "Content-Type")
            let dataTask = session.dataTask(with: request) { (data, response, error) in
                print("HERE: \(String.init(data: data!, encoding: .utf8))")
                let decoder = JSONDecoder()
                let cityList = try! decoder.decode([City].self, from: data!)
                DispatchQueue.main.async {
                    self.delegate?.cityListLoaded(cityList: cityList)
                }
            }
            dataTask.resume()
        }
    }
}
