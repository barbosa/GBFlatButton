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
@property (nonatomic, weak) IBOutlet GBFlatButton *blueButton;
@property (nonatomic, weak) IBOutlet GBFlatButton *purpleButton;

@property (nonatomic, weak) IBOutlet GBFlatButton *pinkSelectedButton;
@property (nonatomic, weak) IBOutlet GBFlatButton *yellowSelectedButton;
@property (nonatomic, weak) IBOutlet GBFlatButton *orangeSelectedButton;
@property (nonatomic, weak) IBOutlet GBFlatButton *greenSelectedButton;
@property (nonatomic, weak) IBOutlet GBFlatButton *blueSelectedButton;
@property (nonatomic, weak) IBOutlet GBFlatButton *purpleSelectedButton;

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
    _pinkSelectedButton.buttonColor = _pinkButton.buttonColor;
    _pinkSelectedButton.selected = YES;
    
    _yellowButton.buttonColor = [UIColor gb_yellowColor];
    _yellowSelectedButton.buttonColor = _yellowButton.buttonColor;
    _yellowSelectedButton.selected = YES;
    
    _orangeButton.buttonColor = [UIColor orangeColor];
    _orangeSelectedButton.buttonColor = _orangeButton.buttonColor;
    _orangeSelectedButton.selected = YES;
    
    _greenButton.buttonColor = [UIColor gb_greenColor];
    _greenSelectedButton.buttonColor = _greenButton.buttonColor;
    _greenSelectedButton.selected = YES;
    
    _blueButton.buttonColor = [UIColor gb_blueColor];
    _blueSelectedButton.buttonColor = _blueButton.buttonColor;
    _blueSelectedButton.selected = YES;
    
    _purpleButton.buttonColor = [UIColor gb_purpleColor];
    _purpleSelectedButton.buttonColor = _purpleButton.buttonColor;
    _purpleSelectedButton.selected = YES;
    [_purpleButton setTitle:@"Purple"
                   forState:UIControlStateNormal];
    [_purpleButton setTitle:@"Selected!"
                   forState:UIControlStateSelected];
}

@end
