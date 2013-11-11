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
//#import "HistoryViewController.h"
#import "Database.h"

@interface ViewController :
UIViewController <UITextFieldDelegate>
{
    IBOutlet UITextField *odometerField;
    IBOutlet UITextField *fuelField;
    
    IBOutlet UILabel *milageLabel;
    IBOutlet UILabel *date;
    NSDateFormatter *dateFormatter;
    NSDateFormatter *dFormatter;
    NSString *cTime;
    SummaryViewController *sVC;
    MapViewController *mapVC;
    NSMutableArray *mgRecords;
}

-(IBAction)pressButton;
-(BOOL) textFieldShouldReturn:(UITextField *) textField;
@end
