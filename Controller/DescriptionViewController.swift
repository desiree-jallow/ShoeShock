//
//  DescriptionViewController.swift
//  ShoeShock
//
//  Created by Desiree on 6/29/20.
//  Copyright © 2020 Desiree. All rights reserved.
//

import UIKit

class DescriptionViewController: UIViewController {
    
    var shoe: Shoe?
    
    @IBOutlet var shoeImage: UIImageView!
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var priceLabel: UILabel!
    @IBOutlet var descriptionLabel: UILabel!
    @IBOutlet var cartButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //show detail version of selected shoe
        shoeImage.image = UIImage(named: "\(shoe?.imageName ?? " ")")
        titleLabel.text = shoe?.title
        priceLabel.text = "$\(shoe?.price ?? 0.0)"
        descriptionLabel.text = shoe?.description
        shoeImage.backgroundColor = shoe?.backgroundColor
        cartButton.backgroundColor = shoe?.backgroundColor
    }
    
    //add selected to the cart if it is not already there
    @IBAction func cartButtonPressed(_ sender: UIButton) {
        if let shoe = shoe {
            if !cartShoes.contains(shoe) && !favorites.contains(shoe) {
                cartShoes.append(shoe)
                favorites.append(shoe)
            }
        }
    }
}
