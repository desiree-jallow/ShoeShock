//
//  DescriptionViewController.swift
//  ShoeShock
//
//  Created by Desiree on 6/29/20.
//  Copyright © 2020 Desiree. All rights reserved.
//

import UIKit

class DescriptionViewController: UIViewController {
    
    var backgroundColor: UIColor?
    var titleText: String?
    var price: String?
    var descriptionText: String?
    var shoeImageName: String?
    
    
    @IBOutlet var shoeImage: UIImageView!
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var priceLabel: UILabel!
    @IBOutlet var descriptionLabel: UILabel!
    @IBOutlet var cartButton: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        shoeImage.image = UIImage(named: "\(shoeImageName ?? " ")")
        titleLabel.text = titleText
        priceLabel.text = price
        descriptionLabel.text = descriptionText
        shoeImage.backgroundColor = backgroundColor
        cartButton.backgroundColor = backgroundColor
        
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
