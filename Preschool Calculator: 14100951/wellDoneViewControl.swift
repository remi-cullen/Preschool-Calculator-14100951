//
//  wellDoneViewController.swift
//  Preschool Calculator: 14100951
//
//  Created by Remi Cullen on 29/10/2016.
//  Copyright © 2016 Remi Cullen. All rights reserved.
//

import UIKit

class wellDoneViewControl: UIViewController {
    
    
    @IBOutlet weak var starImage: UIImageView!
    
    @IBOutlet weak var starImage2: UIImageView!
    
    var isThisRotating: Bool  = false;
    var timer: Timer!
    var shouldStopRotating: Bool = false;
    
    
    func refresh()
    {
        if self.isThisRotating == false
        {
            self.starImage.rotate360(completionDelegate: self)
            
        }
    }
    
    func animationDidStop(animation: CAAnimation, finished flag: Bool) {
        if self.shouldStopRotating == false {
            self.starImage.rotate360(completionDelegate: self)
            self.starImage2.rotate360(completionDelegate: self)
        } else {
            self.reset()
        }
    }
    
    func reset() {
        self.isThisRotating = false
        self.shouldStopRotating = false
    }
    
    @IBAction func rotateButn(_ sender: UIButton)
    {
        
            self.starImage.rotate360();
            self.starImage2.rotate360();
        
           }
    
//    func rotateImage(){
//        print("rotate image");
//        print("b");
//        UIView.animate(withDuration: 1.2, delay: 0.0, options: .curveEaseIn, animations: ({
//            self.starImage.transform = CGAffineTransform(rotationAngle: CGFloat(M_PI_2))
//        }), completion:{ finished in
//            
//            if finished {
//                
//                self.rotateImage();
//                print("finished rotation");
//            }
//            
//        })
//    }
//
//    
//    private func rotateView(targetView: UIImageView, duration: Double = 1.2) {
//        UIView.animate(withDuration: duration, delay: 0.0, options: .curveLinear, animations: {
//            targetView.transform = CGAffineTransform(rotationAngle: CGFloat(180))
//        }) { finished in
//            
//            self.rotateView(targetView: targetView, duration: duration)
//        }
//    }
//    

    override func viewDidLoad() {
        super.viewDidLoad();
       
    
    
        }
    override func viewDidAppear(_ animated: Bool) {
        self.starImage.rotate360();
        self.starImage2.rotate360();
    }
    }
