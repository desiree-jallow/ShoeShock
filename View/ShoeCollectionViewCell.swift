//
//  ProductCollectionViewCell.swift
//  ShoeShock
//
//  Created by Desiree on 6/29/20.
//  Copyright © 2020 Desiree. All rights reserved.
//

import UIKit

class ShoeCollectionViewCell: UICollectionViewCell {
   
    
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var priceLabel: UILabel!
    @IBOutlet var shoeImage: UIImageView!
    @IBOutlet var heartButton: UIButton!
   
    
    func updateViews(shoe: Shoe) {
    shoeImage.image = UIImage(named: shoe.imageName)
    titleLabel.text = shoe.title
        priceLabel.text = String(format: "$%.2f", shoe.price)
    backgroundColor = shoe.backgroundColor
    heartButton.setImage(UIImage(systemName: "heart"), for: .normal)
    heartButton.setImage(UIImage(systemName: "heart.fill"), for: .selected)
        if favorites.contains(shoe) {
            heartButton.isSelected = true
        } else {
            heartButton.isSelected = false
        }
    }
}
