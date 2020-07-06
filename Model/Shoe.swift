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
    var price: String
    var imageName: String
    var description: String
    var backgroundColor: UIColor
    
    
    init(title: String, price: String, imageName: String, description: String, backgroundColor: UIColor) {
        self.title = title
        self.price = price
        self.imageName = imageName
        self.description = description
        self.backgroundColor = backgroundColor
        
    }
    
}


 



    
