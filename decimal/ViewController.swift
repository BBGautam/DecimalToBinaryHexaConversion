//
//  ViewController.swift
//  decimal
//
//  Created by Gautam sharma on 12/09/17.
//  Copyright © 2017 Gautam sharma. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {
    @IBOutlet weak var decimalTF: UITextField!
    @IBOutlet weak var BinaryTF: UITextField!
    @IBOutlet weak var HexaDecimalTF: UITextField!
    var DecimalStr=""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        decimalTF.delegate=self
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func clearMethod(_ sender: Any) {
        decimalTF.text=""
        BinaryTF.text=""
        HexaDecimalTF.text=""
        DecimalStr=""
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        if (textField.text!.components(separatedBy:".").count > 1 && string == "."){
            return false
        }
       
        let newString = NSString(string: textField.text!).replacingCharacters(in: range, with: string)
        print("newString\(newString)")
        
        if Int(newString) != nil{
            if let num = Int(newString){
                let str = String(num.toBinary())
                BinaryTF.text=str
                let hex=String(num.toHexa())
                HexaDecimalTF.text=hex
            }
        }else {
            BinaryTF.text=""
            HexaDecimalTF.text=""
        }
        return true
    }
}

extension Int {
    func toHexa()->String {
        return String(self, radix: 16)
    }
    func toBinary()->String {
        return String(self, radix: 2)
    }
    
}


