//
//  ViewController.swift
//  calculator
//
//  Created by User on 10/29/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var resultLabel: UILabel!
    
    var numberOne: Double? = nil
    var operation: Double? = nil
    var percentageOperation: Int? = nil
    @IBAction func clearClick(_ sender: Any) {
        resultLabel.text = "0"
        
        numberOne = nil
    }

    
    @IBAction func changeSign(_ sender: Any) {
        resultLabel.text = String((Double(resultLabel.text ?? "0.0") ?? 0.0) * -1.0)
    }
    
    @IBAction func addPoint(_ sender: UIButton) {
        if !(resultLabel.text?.contains(".") ?? false) {
            resultLabel.text?.append(".")
        }
        
    }
    @IBAction func nineClick(_ sender: UIButton) {
        if resultLabel.text == "0" {
            resultLabel.text = "9"
        } else {
            resultLabel.text = (resultLabel.text ?? String()) + "9"
        }
    }
    @IBAction func eightClick(_ sender: UIButton) {
        if resultLabel.text == "0" {
            resultLabel.text = "8"
        } else {
            resultLabel.text = (resultLabel.text ?? String()) + "8"
        }
    }
    @IBAction func sevenClick(_ sender: UIButton) {
        if resultLabel.text == "0" {
            resultLabel.text = "7"
        } else {
            resultLabel.text = (resultLabel.text ?? String()) + "7"
        }
    }
    @IBAction func sixClick(_ sender: UIButton) {
        if resultLabel.text == "0" {
            resultLabel.text = "6"
        } else {
            resultLabel.text = (resultLabel.text ?? String()) + "6"
        }
    }
    @IBAction func fiveClick(_ sender: Any) {
        if resultLabel.text == "0" {
            resultLabel.text = "5"
        } else {
            resultLabel.text = (resultLabel.text ?? String()) + "5"
        }
    }
    @IBAction func fourClick(_ sender: UIButton) {
        if resultLabel.text == "0" {
            resultLabel.text = "4"
        } else {
            resultLabel.text = (resultLabel.text ?? String()) + "4"
        }
    }
    @IBAction func threeClick(_ sender: UIButton) {
        if resultLabel.text == "0" {
            resultLabel.text = "3"
        } else {
            resultLabel.text = (resultLabel.text ?? String()) + "3"
        }
    }
    @IBAction func twoClick(_ sender: UIButton) {
        if resultLabel.text == "0" {
            resultLabel.text = "2"
        } else {
            resultLabel.text = (resultLabel.text ?? String()) + "2"
        }
    }
    @IBAction func oneClick(_ sender: UIButton) {
        if resultLabel.text == "0" {
            resultLabel.text = "1"
        } else {
            resultLabel.text = (resultLabel.text ?? String()) + "1"
        }
    }
    
    @IBAction func zeroClick(_ sender: Any) {
        if resultLabel.text != "0" {
            resultLabel.text = (resultLabel.text ?? String()) + "0"
        }
    }
    
    @IBAction func plusClick(_ sender: Any) {
        operation = 1
        percentageOperation = 1
        if (numberOne == nil) {
            numberOne = Double(resultLabel.text ?? "0")
            resultLabel.text = "0"
        }
    }
    @IBAction func minusClick(_ sender: UIButton) {
        operation = 2
        percentageOperation = 2
        if (numberOne == nil) {
            numberOne = Double(resultLabel.text ?? "0")
            resultLabel.text = "0"
        }
    }
    @IBAction func myltiplyClick(_ sender: UIButton) {
        operation = 3
        percentageOperation = 3
        if (numberOne == nil) {
            numberOne = Double(resultLabel.text ?? "0")
            resultLabel.text = "0"
        }
    }
    @IBAction func divideClick(_ sender: UIButton) {
        operation = 4
        percentageOperation = 4
        if (numberOne == nil) {
            numberOne = Double(resultLabel.text ?? "0")
            resultLabel.text = "0"
        }
    }
    @IBAction func percentClick(_ sender: Any) {
        operation = 5
        if (numberOne == nil) {
            numberOne = Double(resultLabel.text ?? "0")
            resultLabel.text = "0"
        }
        switch (percentageOperation) {

        case 1: resultLabel.text = String(Double((numberOne ?? 0)) / 100 * Double(resultLabel.text ?? "0")!)
        case 2: resultLabel.text = String((numberOne ?? 0) / 100 * Double(resultLabel.text ?? "0")!)
        case 3: resultLabel.text = String(Double(resultLabel.text ?? "0")! / 100)
        case 4: resultLabel.text = String(Double(resultLabel.text ?? "0")! / 100)
            
        default:
            resultLabel.text = String((numberOne ?? 0) / 100)
                
                numberOne = nil
                    break
        }
    }
    
    @IBAction func resultClick(_ sender: Any) {
        switch (operation) {
        case 1:
        resultLabel.text = String((numberOne ?? 0) + Double(resultLabel.text ?? "0")!)
        
        numberOne = nil
            break
        case 2:
            resultLabel.text = String((numberOne ?? 0) - Double(resultLabel.text ?? "0")!)
    
            numberOne = nil
                break
        case 3:
            resultLabel.text = String((numberOne ?? 0) * Double(resultLabel.text ?? "0")!)
            numberOne = nil
                break
        case 4:
            resultLabel.text = String((numberOne ?? 0) / Double(resultLabel.text ?? "0")!)
            numberOne = nil
                break
        case 5:
            switch (percentageOperation) {

            case 1: resultLabel.text = String((numberOne ?? 0) + Double(resultLabel.text ?? "0")!)
            case 2: resultLabel.text = String((numberOne ?? 0) - Double(resultLabel.text ?? "0")!)
            case 3: resultLabel.text = String(Double(resultLabel.text ?? "0")! * (numberOne ?? 0))
            case 4: resultLabel.text = String((numberOne ?? 0) / Double(resultLabel.text ?? "0")!)
                
            default:
                resultLabel.text = String((numberOne ?? 0) / 100)
                    
                    numberOne = nil
                        break
            }
        
        default:
            numberOne = nil
            break
        }
}
}
