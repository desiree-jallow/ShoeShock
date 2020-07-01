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
            cell.updateViews(shoe: shoe)
            cell.layer.cornerRadius = 8
            cell.heartButton.addTarget(self, action: #selector(heartButtonPressed), for: .touchUpInside)
            cell.heartButton.tag = indexPath.row
            return cell
            
          }
    
    @objc func heartButtonPressed(_ sender: UIButton) {
        let indexPathRow = sender.tag
        let shoe = myShoes[indexPathRow]
        let index = cartShoes.firstIndex(of: shoe)
        if sender.currentImage == UIImage(systemName: "heart.fill") {
              sender.setImage(UIImage(systemName: "heart"), for: .normal)
            cartShoes.remove(at: index ?? 0)
          } else {
              sender.setImage(UIImage(systemName: "heart.fill"), for: .normal)
                cartShoes.append(shoe)
            
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


