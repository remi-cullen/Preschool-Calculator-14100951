//
//  wellDoneViewController.swift
//  Preschool Calculator: 14100951
//
//  Created by Remi Cullen on 29/10/2016.
//  Copyright © 2016 Remi Cullen. All rights reserved.
//

import UIKit

class wellDoneViewControl: UIViewController {
    
    //Variables
    @IBOutlet weak var resultNumFirst: UILabel!
    
    @IBOutlet weak var resultNumSecond: UILabel!
    
    @IBOutlet weak var resultCodedResult: UILabel!
    
    @IBOutlet weak var starImage: UIImageView!
    
    @IBOutlet weak var starImage2: UIImageView!
    
    var isThisRotating: Bool  = false;
    var timer: Timer!
    var shouldStopRotating: Bool = false;

    @IBAction func exitApplication(_ sender: Any)
    {
        UIControl().sendAction(#selector(URLSessionTask.suspend), to: UIApplication.shared, for: nil)
        
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


    override func viewDidLoad() {
        super.viewDidLoad();
        self.resultNumFirst.text = dataManager.firstNumberText;
        self.resultNumSecond.text = dataManager.secondNumberText;
        self.resultCodedResult.text = dataManager.codedNumberText;
    
    
        }
    override func viewDidAppear(_ animated: Bool) {
        self.starImage.rotate360();
        self.starImage2.rotate360();
    }
    }
