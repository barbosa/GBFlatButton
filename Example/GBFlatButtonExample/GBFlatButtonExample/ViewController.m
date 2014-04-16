//
//  ViewController.m
//  GBFlatButtonExample
//
//  Created by Gustavo Barbosa on 4/15/14.
//  Copyright (c) 2014 Gustavo Barbosa. All rights reserved.
//

#import "ViewController.h"
#import "GBFlatButton.h"

@interface ViewController ()
{
    GBFlatButton *button;
}
@end

@implementation ViewController


- (void)viewDidLoad
{
    [super viewDidLoad];

    CGRect buttonFrame = CGRectMake(0, 50, 100, 44);
    button = [[GBFlatButton alloc] initWithFrame:buttonFrame];
    button.tintColor = [UIColor redColor];
    
    [button setTitle:@"Flat button" forState:UIControlStateNormal];
    
//    [self.view addSubview:button];
}

@end
