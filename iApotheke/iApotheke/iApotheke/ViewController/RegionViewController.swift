//
//  RegionViewController.swift
//  iApotheke
//
//  Created by user on 18.11.2019.
//  Copyright © 2019 Kazim Okan Akgül. All rights reserved.
//

import UIKit

extension RegionViewController: RegionDataSourceDelegate {
    func regionListLoaded(regionList: [Region]) {
        self.regionArray = regionList
        self.regionCollectionView.reloadData()
    }
}

extension RegionViewController: UICollectionViewDataSource {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return regionArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let item = collectionView.dequeueReusableCell(withReuseIdentifier: "RegionCell", for: indexPath) as! RegionCollectionViewCell
        let region = regionArray[indexPath.row]
        item.regionName.text = region.Name
        return item
    }
}

class RegionViewController: UIViewController {
    @IBOutlet weak var regionCollectionView: UICollectionView!
    var selectedCityId:Int?
    let regionDataSource = RegionDataSource()
    var regionArray: [Region] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Regions"
        regionDataSource.delegate = self
        // Do any additional setup after loading the view.
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        if let cityId = selectedCityId {
            regionDataSource.loadListOfRegion(cityId:cityId)
        }
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        let item = sender as! RegionCollectionViewCell
        let indexPath = regionCollectionView.indexPath(for: item)
        if let indexPath = indexPath {
            let region = regionArray[indexPath.row]
            let destination = segue.destination as! PharmacyViewController
            destination.selectedRegionId = region.Id
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
