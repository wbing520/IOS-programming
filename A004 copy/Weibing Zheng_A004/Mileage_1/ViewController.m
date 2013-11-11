//
//  ViewController.m
//  Mileage_1
//
//  Created by mb on 5/9/13.
//  Copyright (c) 2013 USU. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [odometerField setDelegate:self];
    [fuelField setDelegate:self];
}

-(BOOL) textFieldShouldReturn:(UITextField *) textField
{
    [textField resignFirstResponder];
    return YES;
}

-(IBAction) pressButton
{
    double odoInt = [odometerField.text doubleValue];
    
    double fuelAdded = [fuelField.text doubleValue];
    
    float result = odoInt/fuelAdded;
    
    milageLabel.text = [NSString stringWithFormat:@"%f", result];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (id) initWithNibName:(NSString *) nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if(self)
    {
        UITabBarItem *tbi = [self tabBarItem];
        tbi.Title = @"Millage";
        tbi.image = [UIImage imageNamed:@"47-fuel .png"];
        
    }
    return self;
}
@end
