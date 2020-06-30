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
            return cell
            
          }
    }


