//
//  ViewController.m
//  A001
//
//  Created by Student on 5/7/13.
//  Copyright (c) 2013 IOSProgramming. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    flag = true;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction) buttonPressed
{
    if(flag)
    {
        [myButton setTitle:@"ID" forState:UIControlStateNormal];
        [name setText:@"Diabetic"];
        [address setText:@"insulin dependent"];
        [city setText:@"Epileptic"];
        [homePhone setText: @"heart condition"];
        [emergencyLabel setText: @"For medical emergency call:"];
        [emergencyPhone setText: @"Dr.Bill Bones, 797-7654"];
        flag = false;
    }
    else
    {
        [myButton setTitle:@"MEDICAL" forState:UIControlStateNormal];
        [name setText:@"John C. Smith"];
        [address setText:@"1234 Oak Street"];
        [city setText:@"Logan, UT 84342"];
        [homePhone setText: @"home phone:(435) 797-5432"];
        [emergencyLabel setText: @"In case of emergency call:"];
        [emergencyPhone setText: @"Alice Smith, 797-4567"];
        flag = true;
    }
}

@end
