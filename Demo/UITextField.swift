//
//  File.swift
//  Demo
//
//  Created by Shailesh Prabhudesai on 05/11/19.
//  Copyright © 2019 Shailesh Prabhudesai. All rights reserved.
//

import Foundation
import UIKit

internal class CustomTextField:UITextField,UITextFieldDelegate {

    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
        delegate = self
        createBorder()
    }
    
    required override init(frame: CGRect) {
        super.init(frame: frame)
        delegate = self
        createBorder()
    }
    
    private func createBorder(){
        self.borderStyle = .none
        self.layer.backgroundColor = UIColor.white.cgColor

        self.layer.masksToBounds = false
        self.layer.shadowColor = UIColor.gray.cgColor
        self.layer.shadowOffset = CGSize(width: 0.0, height: 1.0)
        self.layer.shadowOpacity = 1.0
        self.layer.shadowRadius = 0.0
    }
    
    func shake() {
        let shake           = CABasicAnimation(keyPath: "position")
        shake.duration      = 0.1
        shake.repeatCount   = 2
        shake.autoreverses  = true
        
        let fromPoint       = CGPoint(x: center.x - 8, y: center.y)
        let fromValue       = NSValue(cgPoint: fromPoint)
        
        let toPoint         = CGPoint(x: center.x + 8, y: center.y)
        let toValue         = NSValue(cgPoint: toPoint)
        
        shake.fromValue     = fromValue
        shake.toValue       = toValue
        
        layer.add(shake, forKey: "position")
    }
}


