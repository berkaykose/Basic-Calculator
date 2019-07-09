//
//  ViewController.swift
//  BasicCalculator
//
//  Created by Berkay Köse on 22.06.2019.
//  Copyright © 2019 Berkay Köse. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //MARK: - Variables
    var mark = ""
    var result = 0
    
    //MARK: - IBOutlets
    @IBOutlet weak var firstNumberTextField: UITextField!
    @IBOutlet weak var secondNumberTextField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    //MARK: - IBActions
    @IBAction func plusButtonAction(_ sender: Any) {
        mark = "+"
    }
    
    @IBAction func minusButtonAction(_ sender: Any) {
        mark = "-"
    }
    
    @IBAction func multiplyButtonAction(_ sender: Any) {
        mark = "*"
    }
    
    @IBAction func divideButtonAction(_ sender: Any) {
        mark = "/"
    }
    
    @IBAction func calculateButtonAction(_ sender: Any) {
        if mark == "+" {
            if let numberOne = Int(firstNumberTextField.text!) , let numberTwo = Int(secondNumberTextField.text!) {
               result = addition(firstNumber: numberOne, secondNumber: numberTwo)
            }
            resultLabel.text = "Sonuç : \(result)"
        }else if mark == "-" {
            if let numberOne = Int(firstNumberTextField.text!) , let numberTwo = Int(secondNumberTextField.text!) {
                result = extraction(firstNumber: numberOne, secondNumber: numberTwo)
            }
            resultLabel.text = "Sonuç : \(result)"
        }else if mark == "*" {
            if let numberOne = Int(firstNumberTextField.text!) , let numberTwo = Int(secondNumberTextField.text!) {
                result = multiplication(firstNumber: numberOne, secondNumber: numberTwo)
            }
            resultLabel.text = "Sonuç : \(result)"
        }else if mark == "/" {
            if let numberOne = Int(firstNumberTextField.text!) , let numberTwo = Int(secondNumberTextField.text!) {
                result = division(firstNumber: numberOne, secondNumber: numberTwo)
            }
            resultLabel.text = "Sonuç : \(result)"
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    //MARK: - Functions
    func addition(firstNumber : Int, secondNumber : Int) -> Int {
        return firstNumber + secondNumber
    }
    
    func extraction(firstNumber : Int, secondNumber: Int) -> Int {
        return firstNumber - secondNumber
    }
    
    func multiplication(firstNumber : Int, secondNumber : Int) -> Int {
        return firstNumber * secondNumber
    }
    
    func division(firstNumber : Int, secondNumber : Int) -> Int {
        return firstNumber / secondNumber
    }
    

}

