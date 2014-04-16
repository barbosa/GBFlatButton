//
//  ViewController.m
//  GBFlatButtonExample
//
//  Created by Gustavo Barbosa on 4/15/14.
//  Copyright (c) 2014 Gustavo Barbosa. All rights reserved.
//

#import "ViewController.h"
#import "GBFlatSelectableButton.h"
#import "UIColor+GBFlatButton.h"

@interface ViewController ()
@property (nonatomic, weak) IBOutlet GBFlatButton *pinkButton;
@property (nonatomic, weak) IBOutlet GBFlatButton *yellowButton;
@property (nonatomic, weak) IBOutlet GBFlatButton *orangeButton;
@property (nonatomic, weak) IBOutlet GBFlatButton *greenButton;
@property (nonatomic, weak) IBOutlet GBFlatSelectableButton *blueButton;
@property (nonatomic, weak) IBOutlet GBFlatSelectableButton *purpleButton;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    // Uncomment the following lines to add a programatically-created button
//    GBFlatSelectableButton *blackButton = [[GBFlatSelectableButton alloc] initWithFrame:CGRectMake(0, 30, 150, 44)];
//    blackButton.buttonColor = [UIColor blackColor];
//    [blackButton setTitle:@"Black"
//                 forState:UIControlStateNormal];
//    blackButton.center = CGPointMake(self.view.center.x, blackButton.center.y);
//    [self.view addSubview:blackButton];
    
    _pinkButton.buttonColor = [UIColor gb_pinkColor];
    _pinkButton.layer.cornerRadius = 5.0f;
    
    _yellowButton.buttonColor = [UIColor gb_yellowColor];
    
    _orangeButton.buttonColor = [UIColor orangeColor];
    _orangeButton.selected = YES;
    
    _greenButton.buttonColor = [UIColor gb_greenColor];
    
    _blueButton.buttonColor = [UIColor gb_blueColor];
    _blueButton.selected = YES;
    _blueButton.layer.cornerRadius = 8.0f;
    [_blueButton setTitle:@"Blue selected"
                 forState:UIControlStateSelected];
    
    _purpleButton.buttonColor = [UIColor gb_purpleColor];
    [_purpleButton setTitle:@"Selectable button"
                   forState:UIControlStateNormal];
    [_purpleButton setTitle:@"Yay! Button selected!"
                   forState:UIControlStateSelected];
}

@end
