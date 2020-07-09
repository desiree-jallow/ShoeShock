//
//  PurchaseViewController.swift
//  ShoeShock
//
//  Created by Desiree on 7/9/20.
//  Copyright © 2020 Desiree. All rights reserved.
//

import UIKit

class PurchaseViewController: UIViewController {

    @IBOutlet var totalLabel: UILabel!
    
    var total: String?
    
        override func viewDidLoad() {
        super.viewDidLoad()
        
            totalLabel.text = "ORDER TOTAL: \(total ?? "")"
    }
}
