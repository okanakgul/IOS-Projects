//
//  CityViewController.swift
//  iApotheke
//
//  Created by user on 18.11.2019.
//  Copyright © 2019 Kazim Okan Akgül. All rights reserved.
//

import UIKit

extension CityViewController: CityDataSourceDelegate {
    func cityListLoaded(cityList: [City]) {
        self.cityArray = cityList
        self.cityCollectionView.reloadData()
    }
}

extension CityViewController: UICollectionViewDataSource {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return cityArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let item = collectionView.dequeueReusableCell(withReuseIdentifier: "CityCell", for: indexPath) as! CityCollectionViewCell
        let city = cityArray[indexPath.row]
        
        item.cityName.text = city.Name
        
        return item
    }
}

class CityViewController: UIViewController {
    @IBOutlet weak var cityCollectionView: UICollectionView!
    
    let cityDataSource = CityDataSource()
    var cityArray: [City] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Cities"
        cityDataSource.delegate = self
        cityDataSource.loadListOfCity()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        let item = sender as! CityCollectionViewCell
        let indexPath = cityCollectionView.indexPath(for: item)
        if let indexPath = indexPath {
            let city = cityArray[indexPath.row]
            let destination = segue.destination as! RegionViewController
            destination.selectedCityId = city.Id
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
