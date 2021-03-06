//
//  mainViewController.swift
//  Preschool Calculator: 14100951
//
//  Created by Remi Cullen on 20/10/2016.
//  Copyright © 2016 Remi Cullen. All rights reserved.
//

import UIKit
import Foundation


class mainViewController : UIViewController
{
    //Variables
    var  buttonInput = Float();//the input value from the number buttons
    var firstNumberResult = Float();//firstNumResult
    var secondNumberResult = Float();//secondNumResult
    
    //labels for displaying text
    @IBOutlet weak var firstNumber: UILabel! //firstNum
    @IBOutlet weak var secondNumber: UILabel! //2ndNum
    @IBOutlet weak var answerFromButton: UILabel!//Answer
    @IBOutlet weak var answerFromCode: UILabel! //Coded Answer
    @IBOutlet weak var tryAgainLabel: UILabel!
    
    func randomiseNumber()
    {
        firstNumber.text = "\(arc4random_uniform(4) + 1)";
        secondNumber.text = "\(arc4random_uniform (4) + 1)";
    }
    
    
    func calculateRandomNumbers()
    {
        //used to input the label value to a variable to be calculated
        let firstNumberResult:Int? = Int(firstNumber.text!);
        let secondNumberResult:Int? = Int(secondNumber.text!);
        
        let codedResult: Int = firstNumberResult! + secondNumberResult!; //final result
        
        answerFromCode.text = "\(codedResult)";
    }
    

    
    func checkAnswers()
    {
        //this method will compare the coded answer to the number input
        if (answerFromButton.text == answerFromCode.text ){
            let storyboard: UIStoryboard = UIStoryboard(name:"Main", bundle: nil)
            
            let wellDoneViewController = storyboard.instantiateViewController(withIdentifier: "wellDoneView")
            self.present(wellDoneViewController, animated: true, completion: nil) // moving the view to the destination
        }
        else
        {
            //this animation will pop the label up then within the duration set it back to invisible
            UIView.animate(withDuration: 4.0, delay: 0.0, options: .curveEaseInOut, animations: ({
                self.tryAgainLabel.alpha = 1;
                self.tryAgainLabel.alpha = 0;
                
            }), completion: nil)
            
        }
    }

    
    @IBAction func inputNumButton(_ sender: UIButton)
    {
        buttonInput = Float(sender.titleLabel!.text!)!;
        answerFromButton.text = ("\(Int(buttonInput))");
        checkAnswers();
    }
    
    
    
    
    override func viewDidLoad()
    {
        randomiseNumber();
        calculateRandomNumbers();
        dataManager.firstNumberText = self.firstNumber.text!;
        dataManager.secondNumberText = self.secondNumber.text!;
        dataManager.codedNumberText = self.answerFromCode.text!;
        self.tryAgainLabel.alpha = 0
    }
    
}
