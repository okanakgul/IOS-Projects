//
//  PharmacyDataSource.swift
//  iApotheke
//
//  Created by user on 18.11.2019.
//  Copyright © 2019 Kazim Okan Akgül. All rights reserved.
//

import Foundation
protocol PharmacyDataSourceDelegate {
    func pharmacyListLoaded (pharmacyList: [Pharmacy])
}

class PharmacyDataSource {
    var delegate: PharmacyDataSourceDelegate?
    let baseURL = "https://koc.api.staging.tarentum.io"
    
    func loadListOfPharmacy(regionId: String) {
        let session = URLSession.shared
        if let url = URL(string: "\(baseURL)/region/\(regionId)/pharmacy") {
            var request = URLRequest(url: url)
            request.httpMethod = "GET"
            request.addValue("application/json", forHTTPHeaderField: "Content-Type")
            let dataTask = session.dataTask(with: request) { (data, response, error) in
                print("HERE: \(String.init(data: data!, encoding: .utf8))")
                let decoder = JSONDecoder()
                let pharmacyList = try! decoder.decode([Pharmacy].self, from: data!)
                DispatchQueue.main.async {
                    self.delegate?.pharmacyListLoaded(pharmacyList: pharmacyList)
                }
            }
            dataTask.resume()
        }
    }
}
