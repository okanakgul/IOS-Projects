//
//  PharmacyViewController.swift
//  iApotheke
//
//  Created by user on 18.11.2019.
//  Copyright © 2019 Kazim Okan Akgül. All rights reserved.
//

import UIKit

extension PharmacyViewController: PharmacyDataSourceDelegate {
    func pharmacyListLoaded(pharmacyList: [Pharmacy]) {
        self.pharmacyArray = pharmacyList
        self.pharmacyCollectionView.reloadData()
    }
}

extension PharmacyViewController: UICollectionViewDataSource {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return pharmacyArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let item = collectionView.dequeueReusableCell(withReuseIdentifier: "PharmacyCell", for: indexPath) as! PharmacyCollectionViewCell
        let pharmacy = pharmacyArray[indexPath.row]
        item.pharmacyName.text = pharmacy.Name
        
        return item
    }
}

class PharmacyViewController: UIViewController {
    @IBOutlet weak var pharmacyCollectionView: UICollectionView!
    var selectedRegionId:String?
    let pharmacyDataSource = PharmacyDataSource()
    var pharmacyArray: [Pharmacy] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Pharmacies"
        pharmacyDataSource.delegate = self
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        if let regionId = selectedRegionId {
            pharmacyDataSource.loadListOfPharmacy(regionId:regionId)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        
        let item = sender as! PharmacyCollectionViewCell
        let indexPath = pharmacyCollectionView.indexPath(for: item)
        
        if let indexPath = indexPath {
            let drugStore = pharmacyArray[indexPath.row]
            
            let destination = segue.destination as! PharmacyDetailViewController
            
            destination.pharmacyId = drugStore.Id
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
