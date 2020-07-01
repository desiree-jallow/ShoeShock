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
    
    //figure out how to delete row when stepper == 0
      
      func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = cartTable.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as! CartTableViewCell
        let shoe = cartShoes[indexPath.row]
        cell.stepper.tag = indexPath.row
        if cell.stepper.value == 0 {
            cartShoes.remove(at: indexPath.row)
//            let indexPath = IndexPath(row: indexPath.row, section: 1)
            cartTable.deleteRows(at: [indexPath], with: .automatic)
        }
        cell.updateViews(shoe: shoe)
        return cell
        
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
