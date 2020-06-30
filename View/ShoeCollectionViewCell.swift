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
    
    
    func updateViews(shoe: Shoe) {
    shoeImage.image = UIImage(named: shoe.imageName)
    titleLabel.text = shoe.title
    priceLabel.text = shoe.price
        
    }
    
    
    
    
}
