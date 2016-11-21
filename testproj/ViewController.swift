//
//  ViewController.swift
//  testproj
//
//  Created by TrevorLee on 2016/11/10.
//  Copyright © 2016年 TrevorLee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var saveFirstNumber: Float = 0
    var currentOperator: String?
    var lestOprator:String?
    var haveSecondNumber = false
    var firstTap = true
    
    @IBOutlet weak var displayLable: UILabel!
    
    @IBAction func button1(_ sender: UIButton) {
        
        //是否歸零
        if currentOperator == "equal"{
            saveFirstNumber = 0
            firstTap = true
        }
        
        //判斷是否正在輸入第二數字
        if !firstTap{
            if !haveSecondNumber{
                self.displayLable.text = ""
                haveSecondNumber = true
            }
        }
    
        let currentTex = self.displayLable.text ?? "0"
        
        if sender.tag == 1100 {
            if !currentTex.contains(".") {
                self.displayLable.text = currentTex + "."
            }
        } else {
            
            let digit = sender.tag - 1000
            
            if haveSecondNumber{
                self.displayLable.text = "0"
            }
            if currentTex == "0" {
                self.displayLable.text = "\(digit)"
            } else {
                self.displayLable.text = currentTex + String(digit)
            }
        }
    }
    
    @IBAction func operatorButton(_ sender: UIButton) {
        
//        func caculateEqual (_ firstNumber:Float, _ lestNumber:Float) -> Float {
//            saveFirstNumber += saveFirstNumber
//            return saveFirstNumber
//        }
        
        
        
        
        switch sender.tag {
            
        case 2000:
            currentOperator = "equal"
            
            if lestOprator == "add"{
                if haveSecondNumber{
                    saveFirstNumber += Float(self.displayLable.text ?? "0")!
                    haveSecondNumber = false
                }
            }
            
            if lestOprator == "minus"{
                if haveSecondNumber{
                    saveFirstNumber -= Float(self.displayLable.text ?? "0")!
                    haveSecondNumber = false
                }
            }
            
            if lestOprator == "multiply"{
                if haveSecondNumber{
                    saveFirstNumber *= Float(self.displayLable.text ?? "0")!
                    haveSecondNumber = false
                }
            }
            
            if lestOprator == "divide"{
                if haveSecondNumber{
                    saveFirstNumber /= Float(self.displayLable.text ?? "0")!
                    haveSecondNumber = false
                }
            }

            
            
            lestOprator = "equal"
            
            self.displayLable.text = String(saveFirstNumber)
            
            haveSecondNumber = false
            
        case 2001:
            currentOperator = "add"
            
            if lestOprator == "add"{
                if haveSecondNumber{
                    saveFirstNumber += Float(self.displayLable.text ?? "0")!
                    haveSecondNumber = false
                }
            }
            
            if lestOprator == "minus"{
                    if haveSecondNumber{
                        saveFirstNumber -= Float(self.displayLable.text ?? "0")!
                        haveSecondNumber = false
                    }
            }
            
            if lestOprator == "multiply"{
                if haveSecondNumber{
                    saveFirstNumber *= Float(self.displayLable.text ?? "0")!
                    haveSecondNumber = false
                }
            }
            
            if lestOprator == "divide"{
                if haveSecondNumber{
                    saveFirstNumber /= Float(self.displayLable.text ?? "0")!
                    haveSecondNumber = false
                }
            }

            
        
                if firstTap{
                    saveFirstNumber = Float(self.displayLable.text ?? "0")!
                    firstTap = false
                }else{
                    if haveSecondNumber{
                        saveFirstNumber += Float(self.displayLable.text ?? "0")!
                        haveSecondNumber = false
                    }else{
                    }
                }
            
            lestOprator = "add"
            self.displayLable.text = String(saveFirstNumber)
        
        case 2002:
            currentOperator = "minus"
            
            if lestOprator == "add"{
                if haveSecondNumber{
                    saveFirstNumber += Float(self.displayLable.text ?? "0")!
                    haveSecondNumber = false
                }
            }
            
            if lestOprator == "minus"{
                if haveSecondNumber{
                    saveFirstNumber -= Float(self.displayLable.text ?? "0")!
                    haveSecondNumber = false
                }
            }
            
            if lestOprator == "multiply"{
                if haveSecondNumber{
                    saveFirstNumber *= Float(self.displayLable.text ?? "0")!
                    haveSecondNumber = false
                }
            }
            
            if lestOprator == "divide"{
                if haveSecondNumber{
                    saveFirstNumber /= Float(self.displayLable.text ?? "0")!
                    haveSecondNumber = false
                }
            }

            
            if firstTap{
                saveFirstNumber = Float(self.displayLable.text ?? "0")!
                firstTap = false
            }else{
                if haveSecondNumber{
                    saveFirstNumber -= Float(self.displayLable.text ?? "0")!
                    haveSecondNumber = false
                }else{
                }
            }
            
            lestOprator = "minus"
            self.displayLable.text = String(saveFirstNumber)
        
        case 2003:
            currentOperator = "multiply"
            
            if lestOprator == "add"{
                if haveSecondNumber{
                    saveFirstNumber += Float(self.displayLable.text ?? "0")!
                    haveSecondNumber = false
                }
            }
            
            if lestOprator == "minus"{
                if haveSecondNumber{
                    saveFirstNumber -= Float(self.displayLable.text ?? "0")!
                    haveSecondNumber = false
                }
            }
            
            if lestOprator == "multiply"{
                if haveSecondNumber{
                    saveFirstNumber *= Float(self.displayLable.text ?? "0")!
                    haveSecondNumber = false
                }
            }
            
            if lestOprator == "divide"{
                if haveSecondNumber{
                    saveFirstNumber /= Float(self.displayLable.text ?? "0")!
                    haveSecondNumber = false
                }
            }

            
            if firstTap{
                saveFirstNumber = Float(self.displayLable.text ?? "0")!
                firstTap = false
            }else{
                if haveSecondNumber{
                    saveFirstNumber *= Float(self.displayLable.text ?? "0")!
                    haveSecondNumber = false
                }else{
                }
            }
            
            lestOprator = "multiply"
            self.displayLable.text = String(saveFirstNumber)

        case 2004:
            
            currentOperator = "devide"
            
            if lestOprator == "add"{
                if haveSecondNumber{
                    saveFirstNumber += Float(self.displayLable.text ?? "0")!
                    haveSecondNumber = false
                }
            }
            
            if lestOprator == "minus"{
                if haveSecondNumber{
                    saveFirstNumber -= Float(self.displayLable.text ?? "0")!
                    haveSecondNumber = false
                }
            }
            
            if lestOprator == "multiply"{
                if haveSecondNumber{
                    saveFirstNumber *= Float(self.displayLable.text ?? "0")!
                    haveSecondNumber = false
                }
            }
            
            if lestOprator == "divide"{
                if haveSecondNumber{
                    saveFirstNumber /= Float(self.displayLable.text ?? "0")!
                    haveSecondNumber = false
                }
            }
            
            if firstTap{
                saveFirstNumber = Float(self.displayLable.text ?? "0")!
                firstTap = false
            }else{
                if haveSecondNumber{
                    saveFirstNumber /= Float(self.displayLable.text ?? "0")!
                    haveSecondNumber = false
                }else{
                }
            }
            
            lestOprator = "divide"
            self.displayLable.text = String(saveFirstNumber)
            
        case 2005:
            currentOperator = "percentage"
        case 2006:
            currentOperator = "negate"
        case 2007:
            currentOperator = "Delet"
            self.displayLable.text = "0"
            saveFirstNumber = 0
            haveSecondNumber = false
            firstTap = true
            
        default:
            break
        }
//        self.displayLable.text = String(saveFirstNumber)
    }
}

