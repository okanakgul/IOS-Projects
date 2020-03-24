//
//  BlessingDetailViewController.swift
//  Healty & Fit
//
//  Created by Ege Melis Ayanoğlu on 6.11.2019.
//  Copyright © 2019 Kazim Okan AKGÜL. All rights reserved.
//

import UIKit

class BlessingDetailViewController: UIViewController {
    @IBOutlet weak var blessingImageView: UIImageView!
    @IBOutlet weak var labelCalories: UILabel!
    @IBOutlet weak var briefInfo: UITextView!
    var selectedBlessing : Blessing?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Details"
        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        if let blessing = selectedBlessing {
            blessingImageView.image = UIImage(named: blessing.imageName)
            labelCalories.text = "\(blessing.calories) kcal/100g"
            briefInfo.text = blessing.briefInfo
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
