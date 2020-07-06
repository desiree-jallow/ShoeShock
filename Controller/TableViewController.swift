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
   

    override func viewDidLoad() {
        super.viewDidLoad()

        cartTable.delegate = self
        cartTable.dataSource = self
    }
    
      func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cartShoes.count
      }

      func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = cartTable.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as! CartTableViewCell
        let shoe = cartShoes[indexPath.row]
            cell.stepper.tag = indexPath.row
            
            cell.stepper.addTarget(self, action: #selector(stepperPressed(_:)), for: .touchUpInside)
            
            cell.updateViews(shoe: shoe)
        
        return cell
        
    }
    
    @objc func stepperPressed(_ sender: UIStepper) {
        if sender.value == 0 {
            let indexPathRow = sender.tag
            let shoe = cartShoes[indexPathRow]

            if let index = cartShoes.firstIndex(of: shoe) {
                cartShoes.remove(at: index)
                cartTable.reloadData()
            }
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
