//
//  AlertShow.swift
//  HeyCare
//
//  Created by Deepak Tomar on 08/04/16.
//  Copyright © 2016 Deepak Tomar. All rights reserved.
//

import Foundation
import UIKit
class AlertShow: NSObject {
    
    func alertView(_ msg :String)  {
        
        let alert = UIAlertController(title: "Conversion Error", message: msg, preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
        let activeVc = UIApplication.shared.keyWindow?.rootViewController
        activeVc?.present(alert, animated: true, completion: nil)
        
    }
}
