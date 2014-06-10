//
//  File.swift
//  GBFlatButtonSwiftExample
//
//  Created by Gustavo Barbosa on 6/10/14.
//  Copyright (c) 2014 Gustavo Barbosa. All rights reserved.
//

import UIKit

extension UIColor {
    
    class func gb_pinkColor() -> UIColor! {
        return _gbFlatButtonColorWithR(206, g: 67, b: 130)
    }
    
    class func gb_yellowColor() -> UIColor! {
        return _gbFlatButtonColorWithR(253, g: 197, b: 0)
    }
    
    class func gb_orangeColor() -> UIColor! {
        return _gbFlatButtonColorWithR(255, g: 167, b: 28)
    }
    
    class func gb_greenColor() -> UIColor! {
        return _gbFlatButtonColorWithR(158, g: 211, b: 15)
    }
    
    class func gb_blueColor() -> UIColor! {
        return _gbFlatButtonColorWithR(100, g: 194, b: 227)
    }
    
    class func gb_purpleColor() -> UIColor! {
        return _gbFlatButtonColorWithR(124, g: 118, b: 247)
    }
    
    class func _gbFlatButtonColorWithR(r: Int, g: Int, b: Int) -> UIColor! {
        func _percent(level: Int) -> CGFloat {
            return Float(level)/255.0
        }
        return UIColor(red: _percent(r), green: _percent(g), blue: _percent(b), alpha: 1.0)
    }
}