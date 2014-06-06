//
//  GBFlatButton.swift
//  GBFlatButton
//
//  Created by Gustavo Barbosa on 6/6/14.
//  Copyright (c) 2014 Gustavo Barbosa. All rights reserved.
//

import UIKit

class GBFlatButton : UIButton {
    
    let kHorizontalPadding : Float = 14.0
    
    init(frame: CGRect) {
        super.init(frame: frame)
        _customizeAppearance()
    }
    
    init(coder aDecoder: NSCoder!) {
        super.init(coder: aDecoder)
        _customizeAppearance()
    }
    
    func _customizeAppearance() {
        
        let containsEdgeInsets = !UIEdgeInsetsEqualToEdgeInsets(contentEdgeInsets, UIEdgeInsetsZero)
        contentEdgeInsets = containsEdgeInsets ? contentEdgeInsets : UIEdgeInsets(top: 0, left: kHorizontalPadding, bottom: 0, right: kHorizontalPadding)
        
        if layer.borderWidth == 0.0 {
            layer.borderWidth = 1.0
        }
        
        if layer.cornerRadius == 0.0 {
            layer.cornerRadius = frame.height / 2.0
        }
        
        layer.masksToBounds = true
    }
    
    override func drawRect(rect: CGRect) {
        backgroundColor = UIColor.redColor()
    }
}