//
//  ViewController.swift
//  ShoeShock
//
//  Created by Desiree on 6/26/20.
//  Copyright © 2020 Desiree. All rights reserved.
//

import UIKit

class CollectionViewController: UIViewController {
    
    @IBOutlet var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.dataSource = self
        collectionView.delegate = self
    }
    
    //check favorites array everytime view appears
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        favorites.removeAll(where: {!cartShoes.contains($0)})
        collectionView.reloadData()
    }
  
    //set selected shoe to description view controllers shoe
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         if segue.identifier == "detailSegue" {
                    
            if let descriptionViewController = segue.destination as? DescriptionViewController {
                      if let cell = sender as? ShoeCollectionViewCell {
                        if let indexPath = collectionView.indexPath(for: cell) {
                            let shoe = myShoes[indexPath.row]
                            descriptionViewController.shoe = shoe
                  }
               }
           }
       }
    }
}

//MARK: - UICollectionViewDelegateFlowLayout
extension CollectionViewController: UICollectionViewDelegateFlowLayout {
    //set size of cells in collection view
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width/2.5, height: collectionView.frame.width/1.75)
    }
}

//MARK: - UICollectionViewDelegate & UICollectionViewDataSource
extension CollectionViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
           return myShoes.count
    }
    
     //populate collection view with every shoe in the myShoes array
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
           let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath) as! ShoeCollectionViewCell
        
            let shoe = myShoes[indexPath.row]
                cell.layer.cornerRadius = 8
                cell.heartButton.addTarget(self, action: #selector(heartButtonPressed), for: .touchUpInside)
        
                cell.heartButton.tag = indexPath.row
                cell.updateViews(shoe: shoe)
        
            return cell
    }
    
    //add and remove shoe to and from favorites array when the heart button is pressed
    @objc func heartButtonPressed(_ sender: UIButton) {
        
        let indexPathRow = sender.tag
        let shoe = myShoes[indexPathRow]
      
        if sender.isSelected {
            sender.isSelected = false
                
            if !cartShoes.isEmpty && !favorites.isEmpty {
                guard let index = cartShoes.firstIndex(of: shoe) else {return}
                cartShoes.remove(at: index)
                favorites.remove(at: index)
            }
            
        } else {
                sender.isSelected = true
            if !cartShoes.contains(shoe) && !favorites.contains(shoe) {
                cartShoes.append(shoe)
                favorites.append(shoe)
            }
        }
    }
}


