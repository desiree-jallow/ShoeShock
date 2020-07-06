//
//  CartTableViewCell.swift
//  ShoeShock
//
//  Created by Desiree on 7/1/20.
//  Copyright © 2020 Desiree. All rights reserved.
//

import UIKit

class CartTableViewCell: UITableViewCell {
    
    @IBOutlet var shoeImage: UIImageView!
    @IBOutlet var shoeNameLabel: UILabel!
    @IBOutlet var shoePriceLabel: UILabel!
     @IBOutlet var stepper: UIStepper!
     @IBOutlet var stepperLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
       
     func updateViews(shoe: Shoe) {
     shoeImage.image = UIImage(named: shoe.imageName)
     shoeNameLabel.text = shoe.title
     shoePriceLabel.text = shoe.price
     stepperLabel.text = String(Int(stepper.value))
        
     }
    
    @IBAction func stepperPressed(_ sender: UIStepper) {
     stepperLabel.text = "\(Int(stepper.value))"
    }
}
