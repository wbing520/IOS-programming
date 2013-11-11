//
//  ViewController.h
//  Mileage_1
//
//  Created by mb on 5/9/13.
//  Copyright (c) 2013 USU. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SummaryViewController.h"
#import "MapViewController.h"

@interface ViewController :
UIViewController <UITextFieldDelegate>
{
    IBOutlet UITextField *odometerField;
    IBOutlet UITextField *fuelField;
    
    IBOutlet UILabel *milageLabel;
    IBOutlet UILabel *date;
    NSDateFormatter *dateFormatter;
    
    SummaryViewController *sVC;
    MapViewController *mapVC;
}

-(IBAction)pressButton;
-(BOOL) textFieldShouldReturn:(UITextField *) textField;
@end
