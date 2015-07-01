//
//  CustomSegue.swift
//  SwipeDemo
//
//  Created by vale on 7/1/15.
//  Copyright (c) 2015 changweitu@gmail.com. All rights reserved.
//

import UIKit


class CustomSegue: UIStoryboardSegue {
   
    
    override func perform() {
    
        
        let sourceVC = self.sourceViewController as! UIViewController
        
        let destinationVC = self.destinationViewController as! ChildViewController
        for vc in sourceVC.childViewControllers as! [UIViewController] {
            
           
            vc.view.removeFromSuperview()
            vc.removeFromParentViewController()
            
        }
        
        
        let id = self.identifier!
        let indexStr = identifier!.substringFromIndex(advance("CustomSegue".startIndex, count("CustomSegue")))
        println(indexStr)
        destinationVC.index = indexStr.toInt()!
        
        sourceVC.addChildViewController(destinationVC)
        sourceVC.view.addSubview(destinationVC.view)
        destinationVC.didMoveToParentViewController(sourceVC)
    }
    
}
