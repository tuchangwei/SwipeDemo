//
//  ChildViewController.swift
//  SwipeDemo
//
//  Created by vale on 7/1/15.
//  Copyright (c) 2015 changweitu@gmail.com. All rights reserved.
//

import UIKit

class ChildViewController: UIViewController,UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {

    var index = 0
    var categories = ["Feed","Categories","Discover","Profile"]
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var collectView: UICollectionView!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        //self.view.backgroundColor = UIColor.orangeColor()
        collectView.delegate = self;
        collectView.dataSource = self;
        
        nameLabel.text = categories[index]
        
        if index == 2 {
            
            nameLabel.hidden = true
            collectView.hidden = false
            
        } else {
            
            nameLabel.hidden = false
            collectView.hidden = true
        }
        
    }
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return 4
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
    
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("PhotoFullViewCell", forIndexPath: indexPath) as! UICollectionViewCell
        return cell
    }
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
      
        return self.collectView.bounds.size
    }
}
