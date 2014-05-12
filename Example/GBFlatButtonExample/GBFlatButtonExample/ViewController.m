//
//  ViewController.m
//  GBFlatButtonExample
//
//  Created by Gustavo Barbosa on 4/15/14.
//  Copyright (c) 2014 Gustavo Barbosa. All rights reserved.
//

#import "ViewController.h"
#import "GBFlatButton.h"
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
//    blackButton.tintColor = [UIColor blackColor];
//    [blackButton setTitle:@"Black"
//                 forState:UIControlStateNormal];
//    blackButton.center = CGPointMake(self.view.center.x, blackButton.center.y);
//    [self.view addSubview:blackButton];
    
    _pinkSelectedButton.selected = YES;
    _yellowSelectedButton.selected = YES;
    _orangeSelectedButton.selected = YES;
    _greenSelectedButton.selected = YES;
    _blueSelectedButton.selected = YES;
    _purpleSelectedButton.selected = YES;
}

@end
