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
    
    
    func tryAgain()
    {
        
        
    }
    
    
    func checkAnswers()
    {
        //this method will compare the coded answer to the number input
        if (answerFromButton.text == answerFromCode.text ){
            let storyboard: UIStoryboard = UIStoryboard(name:"Main", bundle: nil)
            
            let wellDoneViewController = storyboard.instantiateViewController(withIdentifier: "wellDoneView")
            self.present(wellDoneViewController, animated: true, completion: nil)
            
            
        }
        else
        {
            UIView.animate(withDuration: 3.0, delay: 0.0, options: .curveEaseIn, animations: ({
                self.tryAgainLabel.alpha = 1;
                self.tryAgainLabel.isHidden = false;
                self.tryAgainLabel.alpha = 0;
                self.tryAgainLabel.isHidden = true;
                
            }), completion: {finished in if(finished){ self.checkAnswers();}})
            
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
        //addition of
        randomiseNumber();
        calculateRandomNumbers();
    }
}
