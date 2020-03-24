//
//  RegionDataSource.swift
//  iApotheke
//
//  Created by user on 18.11.2019.
//  Copyright © 2019 Kazim Okan Akgül. All rights reserved.
//

import Foundation

protocol RegionDataSourceDelegate {
    func regionListLoaded (regionList: [Region])
}

class RegionDataSource {
    var delegate: RegionDataSourceDelegate?
    let mainURL = "https://koc.api.staging.tarentum.io"
    
    func loadListOfRegion(cityId: Int) {
        let session = URLSession.shared
        if let url = URL(string: "\(mainURL)/city/\(cityId)/region") {
            var request = URLRequest(url: url)
            request.httpMethod = "GET"
            request.addValue("application/json", forHTTPHeaderField: "Content-Type")
            let dataTask = session.dataTask(with: request) { (data, response, error) in
                print("HERE: \(String.init(data: data!, encoding: .utf8))")
                let decoder = JSONDecoder()
                let regionList = try! decoder.decode([Region].self, from: data!)
                DispatchQueue.main.async {
                    self.delegate?.regionListLoaded(regionList: regionList)
                }
            }
            dataTask.resume()
        }
    }
}
