//  imagesViewController.swift
//  Preschool Calculator: 14100951
//
//  Created by Remi Cullen on 24/10/2016.
//  Copyright © 2016 Remi Cullen. All rights reserved.

import UIKit
import Foundation

class imagesViewController : UIViewController
{
    //used to create the view of the apples
    //imageView Variables
    @IBOutlet weak var plateImage: UIImageView!
    @IBOutlet weak var appleOne: UIImageView!
    @IBOutlet weak var appleTwo: UIImageView!
    @IBOutlet weak var appleThree: UIImageView!
    @IBOutlet weak var appleFour: UIImageView!
    @IBOutlet weak var appleFive: UIImageView!
    @IBOutlet weak var appleSix: UIImageView!
    @IBOutlet weak var appleSeven: UIImageView!
    @IBOutlet weak var appleEight: UIImageView!
    @IBOutlet weak var appleNine: UIImageView!
    @IBOutlet weak var appleTen: UIImageView!
    var location = CGPoint(x: 0, y: 0);


//when the correct number will be in putted , if the coded answer is the same as the button answer then segue movement will be back to the main view , which will then randomise a second calculation
    /*
    
    // Calculate offset
    CGPoint pt = [[touches anyObject] locationInView:self]; float dx = pt.x - startLocation.x;
    float dy = pt.y - startLocation.y;
    CGPoint newcenter = CGPointMake(self.center.x + dx,
    self.center.y + dy);
    // Constrain movement into parent bounds
    float halfx = CGRectGetMidX(self.bounds);
    newcenter.x = MAX(halfx, newcenter.x);
    newcenter.x = MIN(self.superview.bounds.size.width - halfx,
    newcenter.x);
    float halfy = CGRectGetMidY(self.bounds);
    
    newcenter.y = MAX(halfy, newcenter.y);
    newcenter.y = MIN(self.superview.bounds.size.height - halfy,
    newcenter.y);*/

    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?)
    {
        if let touch = touches.first
        {
        
            for touch in(touches)
            {
                let location =  touch.locationInView(self.view);
        
                if appleTwo.frame.contains(location)
                {
                    appleTwo.center = location
                }
                super.touchesBegan(touches, withEvent: event)
            }
        
        
        }
    
//        if let touch = touches.first
//        {
//            for touch in(touches)
//            {
//                let location = touch.locationInView(self.view);
//                Float() dx = location.x - startLocation.x;
//                Float() dy = location.y - startLocation.y;
//        
//        var dx: Float = location.x - startLocation.x;
//        var dy: Float = location.y - startLocation.y;
//        
//        var newCenter = CGPointMake(self.center.x + dx, self.center.y + dy);
//        
 //       newcenter.x = MAX(halfx, newcenter.x);
//        newcenter.x = MIN(self.superview.bounds.size.width - halfx,
//        newcenter.x);
//        float halfy = CGRectGetMidY(self.bounds);
//        
//        newcenter.y = MAX(halfy, newcenter.y);
//        newcenter.y = MIN(self.superview.bounds.size.height - halfy,
//    newcenter.y);*/
//
        
        
//            }
//        }
        
    }
    
    override func touchesMoved(touches: Set<UITouch>, withEvent event: UIEvent?)
    {
    if let touch = touches.first
    {
    
    for touch in(touches)
    {
    let location =  touch.locationInView(self.view);
    
    if appleTwo.frame.contains(location)
    {
    appleTwo.center = location
    }
    super.touchesBegan(touches, withEvent: event)
    }

            }
    
    

    }



}
