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
    
    var buttonColor: UIColor?
    
    init(frame: CGRect) {
        super.init(frame: frame)
        _customizeAppearance()
    }
    
    init(coder aDecoder: NSCoder!) {
        super.init(coder: aDecoder)
        _customizeAppearance()
    }
    
    override func drawRect(rect: CGRect) {
        self.layer.borderColor = self.tintColor.CGColor
        self.setTitleColor(self.tintColor, forState: UIControlState.Normal)
        self.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Selected)
    }
    
    func _customizeAppearance() {
        
        let containsEdgeInsets = !UIEdgeInsetsEqualToEdgeInsets(contentEdgeInsets, UIEdgeInsetsZero)
        contentEdgeInsets = containsEdgeInsets ? contentEdgeInsets : UIEdgeInsets(top: 0, left: kHorizontalPadding, bottom: 0, right: kHorizontalPadding)
        
        if layer.borderWidth == 0.0 {
            layer.borderWidth = 1.0
        }
        
        layer.borderColor = tintColor.CGColor
        
        if layer.cornerRadius == 0.0 {
            layer.cornerRadius = frame.size.height / 2.0
        }

//        layer.masksToBounds = true
    }
    
    override var selected: Bool {
        get {
            return super.selected
        }
        set {
            super.selected = newValue
            if super.selected {
                self.backgroundColor = self.tintColor
            } else {
                self.backgroundColor = UIColor.whiteColor()
            }
        }
    }
    
    override var tintColor: UIColor! {
        get {
            if let bc = self.buttonColor {
                return bc
            } else {
                return super.tintColor
            }
        }
        set {
            super.tintColor = newValue
            self.buttonColor = newValue
        }
    }
}