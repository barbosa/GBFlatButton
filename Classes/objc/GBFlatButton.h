//
//  GBFlatButton.h
//  GBFlatButton
//
//  Created by Gustavo Barbosa on 4/15/14.
//  Copyright (c) 2014 Gustavo Barbosa. All rights reserved.
//

#import <UIKit/UIKit.h>

/**
 *  GBFlatButton is a simple subclass of UIButton with a flat UI.
 *  Based on its tintColor, it draws a 1.0pt border and a title using
 *  the same color. The corner radius is calculated based on
 *  half of its height.
 *
 *  For a fullfilled button, just set the `selected` property to YES.
 */
@interface GBFlatButton : UIButton
@end
