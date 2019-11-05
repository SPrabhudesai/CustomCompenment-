//
//  UIView.swift
//  Demo
//
//  Created by Shailesh Prabhudesai on 05/11/19.
//  Copyright © 2019 Shailesh Prabhudesai. All rights reserved.
//

import Foundation
import UIKit

internal class CustomView:UIView {
    
    override init(frame: CGRect) {
           super.init(frame: frame)
           dropShadow()
       }
       
       
       required init?(coder aDecoder: NSCoder) {
           super.init(coder: aDecoder)
           dropShadow()
       }
    
    private func dropShadow() {
      layer.masksToBounds = false
      layer.shadowColor = UIColor.lightGray.cgColor
      layer.shadowOpacity = 0.5
      layer.shadowOffset = CGSize(width: -1, height: 1)
      layer.shadowRadius = 5

      layer.shadowPath = UIBezierPath(rect: self.bounds).cgPath
      layer.shouldRasterize = true
      layer.rasterizationScale = true ? UIScreen.main.scale : 1
    }
}
