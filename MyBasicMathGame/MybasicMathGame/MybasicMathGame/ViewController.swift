//
//  ViewController.swift
//  MybasicMathGame
//
//  Created by ict on 8/31/2559 BE.
//  Copyright © 2559 ict. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    enum MathematicsOperator : Int {
        case Plus = 0
        case Minus
        case Multiply
    }
    
    var myResult : Int = 0
    
    var numberOfGame : Int = 5
    
    var numberOfWinningGame : Int = 0
    
    var MyMathOpertor : MathematicsOperator = .Plus
    
    @IBOutlet weak var firstOperand: UILabel!
    @IBOutlet weak var secondOperand: UILabel!
    @IBOutlet weak var mathOperator: UILabel!
    @IBOutlet weak var gameNumber: UILabel!
    @IBOutlet weak var userAnswer : UITextField!
    @IBOutlet weak var saveButton: UIButton!
    @IBOutlet weak var restartGame: UIButton!
    @IBOutlet weak var rocketView: UIImageView!
    
    @IBAction func restartGameMethod(_ sender: AnyObject) {
        saveButton.isEnabled = true
        numberOfWinningGame = 0
        numberOfGame = 5
        gamePlaying()
    }
    
    func generateRandomOperands(maximumNumber : Int) -> (Int,Int) {
        
        
        let myRandomNumber1 = Int(arc4random_uniform(UInt32(maximumNumber)))
        let myRandomNumber2 = Int(arc4random_uniform(UInt32(maximumNumber)))
        return (myRandomNumber1,myRandomNumber2)
    }
    
    func generateRandomOperator() -> Int{
    let myRandomOperator = Int(arc4random_uniform(UInt32(3)))
        
        return myRandomOperator
    }
    
    func gamePlaying() -> Void {
        let imageName = "rocket\(numberOfWinningGame).png"
        rocketView.image = UIImage(named:imageName)
        
        saveButton.isEnabled = true
        saveButton.backgroundColor = UIColor.green
        
        let myRandomNumber = generateRandomOperands ( maximumNumber : 20 )
        let myRandomOperator = generateRandomOperator ()
        
        
        switch myRandomOperator {
        case 0:
            MyMathOpertor = .Plus
            mathOperator.text = "+"
        case 1:
            MyMathOpertor = .Minus
            mathOperator.text = "-"
        case 2:
            MyMathOpertor = .Multiply
            mathOperator.text = "x"
        default:
            break
        }
        
        if myRandomNumber.0 > myRandomNumber.1 {
            firstOperand.text = "\(myRandomNumber.0)"
            secondOperand.text = "\(myRandomNumber.1)"
        }
        else{
            firstOperand.text = "\(myRandomNumber.1)"
            secondOperand.text = "\(myRandomNumber.0)"
        }
        
        if numberOfGame == 1 {
            gameNumber.text = "เกมส์สุดท้าย"
            
        }
        else{
            gameNumber.text = "เกมส์ที่ \(numberOfGame)"
            restartGame.isHidden = true
        
        }
        numberOfGame -= 1
        userAnswer.text = ""
        
    }
    
    
    
    func checkAnswer(firstNumber : Int,secondNumber : Int ,myAnswer : Int) -> Bool {
        var result : Bool = false
        var correctResult : Int = 0
        
        switch MyMathOpertor {
        case .Plus:
            correctResult = firstNumber + secondNumber
        case .Minus:
            correctResult = firstNumber - secondNumber
        case .Multiply:
            correctResult = firstNumber * secondNumber
        
        }
        
        if correctResult == myAnswer{
            result = true
        }
        return result
    }
    
    @IBAction func readAnswer(sender : AnyObject){
        userAnswer.resignFirstResponder()
        
        if userAnswer.text?.trimmingCharacters(in: NSCharacterSet.whitespaces).characters.count == 0 {
            userAnswer.text = "0"
        }
        
        myResult = Int(userAnswer.text!)!
        let myFirstNumber = Int(firstOperand.text!)!
        let mySecondNumber = Int(secondOperand.text!)!
        if checkAnswer(firstNumber: myFirstNumber, secondNumber: mySecondNumber, myAnswer: myResult) {
             print("คุณตอบถูกต้อง!!!")
            numberOfWinningGame += 1
        }
        else{
            print("คุณตอบผิด!!!")
        }
        
        if numberOfGame > 0 {
            gamePlaying()
        }
        else{
            saveButton.isEnabled = false
            saveButton.backgroundColor = UIColor.darkGray
            restartGame.isHidden = false
            
            let imageName = "rocket\(numberOfWinningGame).png"
            rocketView.image = UIImage(named:imageName)
            
            if numberOfWinningGame == 5 {
                gameNumber.text = "Congratulation!"
                
                let vc = self.storyboard?.instantiateViewController(withIdentifier: "AnimatingVC") as! RocketAnimationViewController
                    vc.modalTransitionStyle = .flipHorizontal
                    self.present(vc,animated: true,completion: nil)
                
            }
            else{
                gameNumber.text = "You've lost !!!!!"
            }
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        gamePlaying()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

