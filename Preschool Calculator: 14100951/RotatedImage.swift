//
//  RotatedImage.swift
//  Preschool Calculator: 14100951
//
//  Created by Remi Cullen on 12/11/2016.
//  Copyright © 2016 Remi Cullen. All rights reserved.
//

import UIKit
//extension of view class, similar to draggable image
extension UIView {
    func rotate360(duration: CFTimeInterval = 3.0, completionDelegate: AnyObject? = nil) {
        let rotateAnimation = CABasicAnimation(keyPath: "transform.rotation") //animation path
        //key rotation from the start value , increment using pi*2 then repeat 
        rotateAnimation.fromValue = 0.0
        rotateAnimation.toValue = CGFloat(M_PI * 2.0)
        rotateAnimation.duration = duration
        rotateAnimation.repeatCount = 100;
        
        if let delegate: AnyObject? = completionDelegate {
            rotateAnimation.delegate = delegate as! CAAnimationDelegate?
        }
        self.layer.add(rotateAnimation, forKey: nil)
    }
}
