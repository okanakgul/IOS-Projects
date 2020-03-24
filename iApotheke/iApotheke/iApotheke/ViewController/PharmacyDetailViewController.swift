//
//  PharmacyDetailViewController.swift
//  iApotheke
//
//  Created by user on 18.11.2019.
//  Copyright © 2019 Kazim Okan Akgül. All rights reserved.
//

import UIKit

extension PharmacyDetailViewController: PharmacyDetailDataSourceDelegate {
    func pharmacyDetailLoaded(pharmacyDetail: PharmacyDetail) {
        pharmacyName.text=pharmacyDetail.Name
        pharmacyPhone.text=pharmacyDetail.Phone
        pharmacyAddress.text=pharmacyDetail.Address
    }
}

class PharmacyDetailViewController: UIViewController {
    @IBOutlet weak var pharmacyName: UILabel!
    @IBOutlet weak var pharmacyAddress: UILabel!
    @IBOutlet weak var pharmacyPhone: UILabel!
    var pharmacyId:String?
    let pharmacyDetailDataSource = PharmacyDetailDataSource()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pharmacyDetailDataSource.delegate=self
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        if let storeId = pharmacyId {
            pharmacyDetailDataSource.loadPharmacyDetail(pharmacyId: storeId)
        }
    }
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
}
