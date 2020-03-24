//
//  PharmacyDetailDataSource.swift
//  iApotheke
//
//  Created by user on 18.11.2019.
//  Copyright © 2019 Kazim Okan Akgül. All rights reserved.
//

import Foundation

protocol PharmacyDetailDataSourceDelegate {
    func pharmacyDetailLoaded (pharmacyDetail: PharmacyDetail)
}

class PharmacyDetailDataSource {
    var delegate: PharmacyDetailDataSourceDelegate?
    let baseURL = "https://koc.api.staging.tarentum.io"
    
    func loadPharmacyDetail(pharmacyId: String) {
        let session = URLSession.shared
        if let url = URL(string: "\(baseURL)/pharmacy/\(pharmacyId)") {
            var request = URLRequest(url: url)
            request.httpMethod = "GET"
            request.addValue("application/json", forHTTPHeaderField: "Content-Type")
            let dataTask = session.dataTask(with: request) { (data, response, error) in
                print("HERE: \(String.init(data: data!, encoding: .utf8))")
                let decoder = JSONDecoder()
                let pharmacyDetail = try! decoder.decode(PharmacyDetail.self, from: data!)
                DispatchQueue.main.async {
                    self.delegate?.pharmacyDetailLoaded(pharmacyDetail: pharmacyDetail)
                }
            }
            dataTask.resume()
        }
    }
}
