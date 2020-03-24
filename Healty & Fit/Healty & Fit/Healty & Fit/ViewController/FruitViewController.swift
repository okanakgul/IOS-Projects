//
//  FruitViewController.swift
//  Healty & Fit
//
//  Created by Ege Melis Ayanoğlu on 6.11.2019.
//  Copyright © 2019 Kazim Okan AKGÜL. All rights reserved.
//

import UIKit

extension FruitViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fruitDataSource.fruitArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FruitCell", for: indexPath) as! FruitTableViewCell
        let fruit = fruitDataSource.fruitArray[indexPath.row]
        cell.fruitImageView.image = UIImage(named: fruit.imageName)
        cell.nameLabel.text = fruit.name
        return cell
    }
}

class FruitViewController: UIViewController {
    @IBOutlet weak var fruitTableView: UITableView!
    let fruitDataSource = FruitDataSource()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Fruits"
        // Do any additional setup after loading the view.
    }
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        let cell = sender as! FruitTableViewCell
        let indexPath = fruitTableView.indexPath(for: cell)
        if let indexPath = indexPath {
            let fruit = fruitDataSource.fruitArray[indexPath.row]
            let destination = segue.destination as! BlessingDetailViewController
            destination.selectedBlessing = fruit
        }
    }
    

}
