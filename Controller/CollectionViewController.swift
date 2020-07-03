//
//  ViewController.swift
//  ShoeShock
//
//  Created by Desiree on 6/26/20.
//  Copyright © 2020 Desiree. All rights reserved.
//

import UIKit

class CollectionViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    
    @IBOutlet var collectionView: UICollectionView!
    var favorites = [Int]()
  
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.dataSource = self
        collectionView.delegate = self
        
    
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width/2.5, height: collectionView.frame.width/1.75)
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
           
           return myShoes.count
          }
          
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
              
           let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath) as! ShoeCollectionViewCell
            let shoe = myShoes[indexPath.row]
            cell.layer.cornerRadius = 8
            cell.heartButton.addTarget(self, action: #selector(heartButtonPressed), for: .touchUpInside)
        if favorites.contains(indexPath.row) {
            cell.heartButton.isSelected = true
        }
            cell.heartButton.tag = indexPath.row
            cell.updateViews(shoe: shoe)
            return cell
        
          }

    @objc func heartButtonPressed(_ sender: UIButton) {
        
        let indexPathRow = sender.tag
        let shoe = myShoes[indexPathRow]
        let index = cartShoes.firstIndex(of: shoe)

        if sender.isSelected {
            sender.isSelected = false
            favorites.remove(at: indexPathRow)
                if !cartShoes.isEmpty {
                cartShoes.remove(at: index ?? 0)
              
          }
            
        } else {
                sender.isSelected = true
                cartShoes.append(shoe)
                favorites.append(indexPathRow)
        }
        
    }

    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
         let shoe = myShoes[indexPath.row]
        performSegue(withIdentifier: "detailSegue", sender: shoe)


    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         if segue.identifier == "detailSegue" {
                    
            if let descriptionViewController = segue.destination as? DescriptionViewController {
                        
                      if let cell = sender as? ShoeCollectionViewCell {
                        if let indexPath = collectionView.indexPath(for: cell) {
                            let shoe = myShoes[indexPath.row]
                               
                    descriptionViewController.descriptionText = shoe.description
                    descriptionViewController.price = shoe.price
                    descriptionViewController.shoeImageName = shoe.imageName
                    descriptionViewController.backgroundColor = shoe.backgroundColor
                    descriptionViewController.titleText = shoe.title
                  }
               }
           }
       }
    }
    
    
}


