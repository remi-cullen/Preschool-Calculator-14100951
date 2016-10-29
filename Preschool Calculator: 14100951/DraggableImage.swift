//
//  DraggableImage.swift
//  Preschool Calculator: 14100951
//
//  Created by Remi Cullen on 28/10/2016.
//  Copyright © 2016 Remi Cullen. All rights reserved.
//

import UIKit

class DraggableImage: UIImageView {
    
    var startLocation: CGPoint?
    
    //var stp: CGPoint?
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        
        startLocation = touches.first?.locationInView(self) //current touch is the starting location
        
        //startLocation = stp;
    }
    
    
    override func touchesMoved(touches: Set<UITouch>, withEvent event: UIEvent?) {
        
        let currentLocation = touches.first?.locationInView(self)
        
        let pointx = currentLocation!.x - startLocation!.x
        let pointy = currentLocation!.y - startLocation!.y
        
        self.center = CGPointMake(self.center.x + pointx, self.center.y + pointy)
        
        var newCentre = self.center;
        
        //constraining the bounds
        
        let halfx = CGRectGetMidX(self.bounds)
        
        newCentre.x = max(halfx, newCentre.x)
        newCentre.x = min((self.superview?.bounds.size.width)! - halfx, newCentre.x)//
        let halfy = CGRectGetMidY(self.bounds)
        print(newCentre)
        newCentre.y = max(halfy, newCentre.y)
        //newCentre.y = min((self.superview?.bounds.size.width)! + halfy, newCentre.y)
        newCentre.y = min(((self.superview?.frame.size.height)! - self.frame.size.height),newCentre.y)
        print(newCentre)
        self.center = newCentre
        let boundsMaxX = CGRectGetMaxX(self.bounds);
        let boundsMinX = CGRectGetMinX(self.bounds);
        
        let boundsMaxY = CGRectGetMaxY(self.bounds);
        let boundsMinY = CGRectGetMinY(self.bounds);
        
        print("BoundsMaxX: ", boundsMaxX);
        print("BoundsMinX: ",boundsMinX);
        print("BoundsMaxY", boundsMaxY);
        print("BoundsMinY", boundsMinY);
        
        
        // if (newCentre.y > 30.0){
        //  newCentre.y = 30.0;
        //}
        
        print(newCentre)
    }
}
