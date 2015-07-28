//
//  ViewController.swift
//  HowManyFingers
//
//  Created by Tayseer Edouni on 6/14/15.
//  Copyright (c) 2015 Tayseer Edouni. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var guessedNumber: UITextField!
    @IBOutlet weak var result: UILabel!

    @IBAction func checkAnswer(sender: AnyObject) {
        var randonNumber = Int(arc4random_uniform(5))
        var userGuess = guessedNumber.text.toInt()
        
        if userGuess != nil{
            
            if userGuess <= 5{
                if userGuess == randonNumber{
                    result.text = "You guessed correctly"
                }
                else{
                    result.text = "You guessed incorrectly. It was \(randonNumber)"
                }
                
            }
            else{
                result.text = "Enter a number between 0-5"
            }
            
        }
        else{
            result.text = "Please enter a number"
        }
       

    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

