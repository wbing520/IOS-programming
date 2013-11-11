//
//  USUCSAboutViewController.m
//  ComputerScienceUSU
//
//  Created by wbing_Luzin on 6/20/13.
//  Copyright (c) 2013 CS6890. All rights reserved.
//

#import "USUCSAboutViewController.h"

@interface USUCSAboutViewController ()

@end

@implementation USUCSAboutViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    [[self navigationItem] setTitle: @"About US"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
