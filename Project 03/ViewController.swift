//
//  ViewController.swift
//  Project 03
//
//  Created by Aleksandr Kurdiukov on 17.03.19.
//  Copyright © 2019 Zizlak. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var firstNumber: UITextField!
    
    @IBOutlet weak var sign: UITextField!
    
    @IBOutlet weak var secondNumber: UITextField!
    
    @IBAction func apply(_ sender: Any) {
        
        let convN1 = Int(firstNumber.text!)
        let convN2 = Int(secondNumber.text!)
        let error = "Некорректные данные"
        var answer = error
        
        if convN1 == nil || convN2 == nil {
            label.text! = error
        } else {
            
            switch sign.text! {
            case "+":
                answer = "\(Double(convN1!) + Double(convN2!))"
            case "-":
                answer = "\(Double(convN1!) - Double(convN2!))"
            case "*":
                answer = "\(Double(convN1!) * Double(convN2!))"
            case "/":
                answer = "\(Double(convN1!) / Double(convN2!))"
            default:
                answer = error
            }
            
            label.text! = answer
        }
    }
}

