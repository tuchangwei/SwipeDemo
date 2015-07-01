//
//  ViewController.swift
//  SwipeDemo
//
//  Created by vale on 7/1/15.
//  Copyright (c) 2015 changweitu@gmail.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var segmentedControl: HMSegmentedControl!
    var containerVC: UIViewController!
    var currentIndex:Int! {
        
        didSet {
            
            containerVC.performSegueWithIdentifier("CustomSegue\(currentIndex)", sender: nil)
        }
    }
    override func viewDidLoad() {
        
        super.viewDidLoad()
        segmentedControl.sectionTitles = ["Feed","Categories","Discover","Profile"]
        segmentedControl.selectionStyle = HMSegmentedControlSelectionStyleTextWidthStripe
        segmentedControl.selectionIndicatorLocation = HMSegmentedControlSelectionIndicatorLocationDown
        segmentedControl.backgroundColor = UIColor(red: 209.0/255, green: 209.0/255, blue: 209.0/255, alpha: 1)
        segmentedControl.titleTextAttributes = [NSForegroundColorAttributeName : UIColor(red: 136.0/255, green: 136.0/255, blue: 136.0/255, alpha: 1)]
        segmentedControl.selectedTitleTextAttributes = [NSForegroundColorAttributeName : UIColor.blackColor()]
        segmentedControl.selectionIndicatorColor = UIColor(red: 181.0/255, green: 181.0/255, blue: 181.0/255, alpha: 1)
        ///typedef void (^IndexChangeBlock)(NSInteger index);
        
        segmentedControl.indexChangeBlock =  { [unowned self] (index) -> () in
            
            println("\(index)")
            self.currentIndex = index
        }
    }
    override func viewDidLayoutSubviews() {
        
        super.viewDidLayoutSubviews()
        self.currentIndex = 0
    
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        containerVC = segue.destinationViewController as! UIViewController
        //containerVC.view.backgroundColor = UIColor.blueColor()
    }
}

