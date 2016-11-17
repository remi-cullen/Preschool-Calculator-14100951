//
//  wellDoneViewController.swift
//  Preschool Calculator: 14100951
//
//  Created by Remi Cullen on 29/10/2016.
//  Copyright © 2016 Remi Cullen. All rights reserved.
//

import UIKit

class wellDoneViewControl: UIViewController {
    
    
    @IBOutlet weak var resultNumFirst: UILabel!
    
    @IBOutlet weak var resultNumSecond: UILabel!
    
    @IBOutlet weak var resultCodedResult: UILabel!

    
    
    
    
    @IBOutlet weak var starImage: UIImageView!
    
    @IBOutlet weak var starImage2: UIImageView!
    
    var isThisRotating: Bool  = false;
    var timer: Timer!
    var shouldStopRotating: Bool = false;
    
    func crossOverNumbers()
    {
        //this method takes the global variables of the viewcontoller before and adds it here and assigns the value to the label
        
        
    }
    
    func refresh()
    {
        if self.isThisRotating == false
        {
            self.starImage.rotate360(completionDelegate: self)
            
        }
    }
    
    func animationDidStop(animation: CAAnimation, finished: Bool)
    {
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
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if segue.identifier == "crossOver"{
//            
//            let controller = segue.destination as! mainViewController
//            resultNumFirst.text = controller.firstNumber.text
//            resultNumSecond.text = controller.secondNumber.text
//            resultCodedResult.text = controller.answerFromCode.text
//        }
//    }

    override func viewDidLoad() {
        super.viewDidLoad();
       
    
    
        }
    override func viewDidAppear(_ animated: Bool) {
        self.starImage.rotate360();
        self.starImage2.rotate360();
    }
    }
