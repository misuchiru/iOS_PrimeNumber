//
//  ViewController.swift
//  PrimeNumber
//
//  Created by perry on 2017/10/22.
//  Copyright © 2017年 perry. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var inputNumber: UITextField!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func enterButton(_ sender: UIButton) {
        
//        let getNumber = inputNumber.text
//        if getNumber == nil {
//            resultLabel.text = "請輸入數字"
//        }else{
//            let intNumber = Int(getNumber!)
//            resultLabel.text = primeNumber(testNumber: intNumber!)
//            resultLabel.isHidden = false
//        }
//        inputNumber.text = ""
        
        if let getNumber = inputNumber.text {
            if let inputNum = Int(getNumber){
                resultLabel.text = primeNumber(testNumber: inputNum)
                resultLabel.isHidden = false
            }
        }
        inputNumber.text = ""
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        inputNumber.becomeFirstResponder()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func primeNumber(testNumber:Int) -> String {
        
        var isPrime = 1
        
        if testNumber <= 0 {
            isPrime = 0
        }else if testNumber == 1{
            isPrime = 2
        }else{
            for i in 2..<testNumber{
                if testNumber % i == 0{
                    isPrime = 2
                }
            }
        }
        switch isPrime {
        case 1:
            return "\(testNumber)是質數"
        case 2:
            return "\(testNumber)不是質數"
        default:
            return "請輸入大於０的數字"
        }
    }

}

