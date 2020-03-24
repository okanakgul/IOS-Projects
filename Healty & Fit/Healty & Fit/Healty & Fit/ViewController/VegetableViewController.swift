//
//  VegetableViewController.swift
//  Healty & Fit
//
//  Created by Ege Melis Ayanoğlu on 6.11.2019.
//  Copyright © 2019 Kazim Okan AKGÜL. All rights reserved.
//

import UIKit

extension VegetableViewController: UICollectionViewDataSource {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return vegetableDataSource.vegetableArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "VegetableCell", for: indexPath) as! VegetableCollectionViewCell
        let vegetable = vegetableDataSource.vegetableArray[indexPath.row]
        cell.nameLabel.text = vegetable.name
        cell.vegetableImageView.image = UIImage(named: vegetable.imageName)
        return cell
    }
    
}

class VegetableViewController: UIViewController {
    let vegetableDataSource = VegetableDataSource()
    @IBOutlet weak var vegetableCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Vegetables"
        // Do any additional setup after loading the view.
    }
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        let cell = sender as! VegetableCollectionViewCell
        let indexPath = vegetableCollectionView.indexPath(for: cell)
        if let indexPath = indexPath {
            let vegetable = vegetableDataSource.vegetableArray[indexPath.row]
            let destination = segue.destination as! BlessingDetailViewController
            destination.selectedBlessing = vegetable
        }
    }
    
    
}
