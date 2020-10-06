//
//  TableViewController.swift
//  ShoeShock
//
//  Created by Desiree on 6/29/20.
//  Copyright © 2020 Desiree. All rights reserved.
//

import UIKit

class TableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
  
    
    @IBOutlet var cartTable: UITableView!
    @IBOutlet var totalPriceLabel: UILabel!
    
    @IBOutlet weak var purchaseButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        cartTable.delegate = self
        cartTable.dataSource = self
        
    }
    
      func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cartShoes.count
      }

    //populate table view with shoes in cart shoes array
      func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = cartTable.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as! CartTableViewCell
        let shoe = cartShoes[indexPath.row]
            cell.stepper.tag = indexPath.row
            cell.stepper.addTarget(self, action: #selector(stepperPressed(_:)), for: .touchUpInside)
            cell.updateViews(shoe: shoe)
            cell.stepper.value = shoe.value
        let TotalPrice = cartShoes.reduce(0.0) {$0 + $1.total}
        totalPriceLabel.text = String(format: "$%.2f", TotalPrice)
            
        return cell
    }
    
    //set up price when stepper value changes
    @objc func stepperPressed(_ sender: UIStepper) {
        
    let indexPathRow = sender.tag
    let shoe = cartShoes[indexPathRow]
        if let index = cartShoes.firstIndex(of: shoe) {
            cartShoes[index].value = sender.value
            let TotalPrice = cartShoes.reduce(0.0) {$0 + $1.total}
               totalPriceLabel.text = String(format: "$%.2f", TotalPrice)
                if sender.value == 0 {
                    cartShoes.remove(at: index)
                    cartTable.reloadData()
                    purchaseButton.isEnabled = false
            }
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            let destinationVC = segue.destination as! PurchaseViewController
            let TotalPrice = cartShoes.reduce(0.0) {$0 + $1.total}
            destinationVC.total = String(format: "$%.2f", TotalPrice)
    }
}
