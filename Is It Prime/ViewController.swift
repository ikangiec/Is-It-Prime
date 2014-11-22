//
//  ViewController.swift
//  Is It Prime
//
//  Created by K C on 11/16/14.
//  Copyright (c) 2014 K C. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var number: UITextField!
    @IBOutlet weak var message: UILabel!
    @IBAction func buttonPressed(sender: AnyObject) {
        var isPrime = true
        
        var Integer = number.text.toInt()
        
        if (Integer != nil) {
            if (Integer < 1) {
                message.text = "Please enter a positive number"
            } else {
                if (Integer == 1) {
                    message.text = "1 is not a prime"
                } else {
                    for var i = 2; i < Integer; ++i {
                        if (Integer! % i == 0) { // Number is not prime
                            isPrime = false
                        }
                    }
                    
                    if (isPrime == true) {
                        message.text = "That number is prime!"
                    } else {
                        message.text = "That number is not prime"
                    }
                }
            }
            
        } else {
            message.text = "Please enter a number"
        }
        
        println(number.text)
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

