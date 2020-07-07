//
//  Shoe.swift
//  ShoeShock
//
//  Created by Desiree on 6/29/20.
//  Copyright © 2020 Desiree. All rights reserved.
//

import UIKit
struct Shoe: Equatable {
    var title: String
    var price: Double
    var imageName: String
    var description: String
    var backgroundColor: UIColor
    var value: Double
    var total: Double {
        price * value
    }
    
    
    
    init(title: String, price: Double, imageName: String, description: String, backgroundColor: UIColor, value: Double, total: Double) {
        self.title = title
        self.price = price
        self.imageName = imageName
        self.description = description
        self.backgroundColor = backgroundColor
        self.value = value
        
    }
    
}


 



    
