//
//  DraggableImage.swift
//  Preschool Calculator: 14100951
//
//  Created by Remi Cullen on 28/10/2016.
//  Copyright © 2016 Remi Cullen. All rights reserved.
//

import UIKit

class DraggableImage: UIImageView {
    
    /*
     This class is a genric class used to drag images , with constraints equal to the above sub view 
     */
    var startLocation: CGPoint?
    
    //var stp: CGPoint?
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        startLocation = touches.first?.location(in: self) //current touch is the starting location
        
        //startLocation = stp;
    }
    
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        let currentLocation = touches.first?.location(in: self)
        
        let pointx = currentLocation!.x - startLocation!.x
        let pointy = currentLocation!.y - startLocation!.y
        
        self.center = CGPoint(x: self.center.x + pointx, y: self.center.y + pointy)
        
        var newCentre = self.center;
        
        //constraining the bounds
        
        let halfx = self.bounds.midX
        
        newCentre.x = max(halfx, newCentre.x)
        newCentre.x = min((self.superview?.bounds.size.width)! - halfx, newCentre.x)//
        let halfy = self.bounds.midY
        //print(newCentre)
        newCentre.y = max(halfy, newCentre.y)
        newCentre.y = min(((self.superview?.frame.size.height)! - self.frame.size.height),newCentre.y)
        //print(newCentre)
        self.center = newCentre
        let boundsMaxX = self.bounds.maxX;
        let boundsMinX = self.bounds.minX;
        
        let boundsMaxY = self.bounds.maxY;
        let boundsMinY = self.bounds.minY;
        //debug
        
        print("BoundsMaxX: ", boundsMaxX);
        print("BoundsMinX: ",boundsMinX);
        print("BoundsMaxY", boundsMaxY);
        print("BoundsMinY", boundsMinY);

        
        print(newCentre)
    }
}
