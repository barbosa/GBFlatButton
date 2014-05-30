//
//  GBFlatSelectableButton.h
//  GBFlatButton
//
//  Created by Gustavo Barbosa on 4/16/14.
//  Copyright (c) 2014 Gustavo Barbosa. All rights reserved.
//

#import "GBFlatButton.h"

/**
 *  GBFlatSelectableButton is a subclass of GBFlatButton with a selection
 *  feature. Based on its tintColor, it draws a 1.0pt border and a title using
 *  the same color. The corner radius is calculated based on
 *  half of its height.
 *
 *  When touched up inside, it toggles its selection state to draw itself
 *  filled with its tintColor or not.
 */
@interface GBFlatSelectableButton : GBFlatButton

@end
