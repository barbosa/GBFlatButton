//
//  GBFlatSelectableButton.m
//  GBFlatButton
//
//  Created by Gustavo Barbosa on 4/16/14.
//  Copyright (c) 2014 Gustavo Barbosa. All rights reserved.
//

#import "GBFlatSelectableButton.h"

@implementation GBFlatSelectableButton

#pragma mark - Constructors

- (id)init
{
    self = [super init];
    if (self) {
        [self addSelectionHandler];
    }
    return self;
}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self addSelectionHandler];
    }
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self) {
        [self addSelectionHandler];
    }
    return self;
}

#pragma mark - Selection Handler

- (void)addSelectionHandler
{
    [self addTarget:self
             action:@selector(toggleButtonSelection)
   forControlEvents:UIControlEventTouchUpInside];
}

- (void)toggleButtonSelection
{
    self.selected = !self.selected;
    
    UIControlState state;
    if (self.selected) {
        state = UIControlStateSelected;
    } else {
        state = UIControlStateNormal;
    }
    
    NSString *title = [self titleForState:state];
    [self setTitle:title forState:state];
    
    [self invalidateIntrinsicContentSize];
}

@end
