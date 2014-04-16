//
//  GBFlatButton.m
//  GBFlatButtonExample
//
//  Created by Gustavo Barbosa on 4/15/14.
//  Copyright (c) 2014 Gustavo Barbosa. All rights reserved.
//

#import "GBFlatButton.h"
#import <QuartzCore/QuartzCore.h>

static CGFloat const kPadding = 14.0f;

@implementation GBFlatButton

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
    }
    return self;
}

- (void)drawRect:(CGRect)rect
{
    self.contentEdgeInsets = UIEdgeInsetsMake(0, kPadding, 0, kPadding);
    self.layer.borderWidth = 1.0f;
    self.layer.borderColor = _borderColor ? _borderColor.CGColor : self.tintColor.CGColor;
    self.layer.cornerRadius = CGRectGetHeight(self.frame) / 2.0f;
    self.clipsToBounds = YES;

    [self setTitleColor:self.tintColor
               forState:UIControlStateNormal];
    [self setTitleColor:[UIColor whiteColor]
               forState:UIControlStateHighlighted];
    
    [self changeBackgroundColorToStateNormal];
    [self addStateChangeHandlers];
}

- (void)changeBackgroundColorToStateHighlighted
{
    self.backgroundColor = self.tintColor;
    [self setNeedsDisplay];
}

- (void)changeBackgroundColorToStateNormal
{
    self.backgroundColor = [UIColor whiteColor];
    [self setNeedsDisplay];
}

- (void)addStateChangeHandlers
{
    [self addTarget:self
             action:@selector(changeBackgroundColorToStateHighlighted)
   forControlEvents:UIControlEventTouchDown];
    
    [self addTarget:self
             action:@selector(changeBackgroundColorToStateNormal)
   forControlEvents:UIControlEventTouchUpInside];
    
    [self addTarget:self
             action:@selector(changeBackgroundColorToStateNormal)
   forControlEvents:UIControlEventTouchUpOutside];
}

#pragma mark - Acessors

- (void)setBorderColor:(UIColor *)borderColor
{
    _borderColor = borderColor;
    [self setNeedsDisplay];
}

@end
