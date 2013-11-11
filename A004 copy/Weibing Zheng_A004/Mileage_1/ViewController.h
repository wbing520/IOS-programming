//
//  ViewController.h
//  Mileage_1
//
//  Created by mb on 5/9/13.
//  Copyright (c) 2013 USU. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController :
UIViewController <UITextFieldDelegate>
{
    IBOutlet UITextField *odometerField;
    IBOutlet UITextField *fuelField;
    
    IBOutlet UILabel *milageLabel;
}

-(IBAction)pressButton;
-(BOOL) textFieldShouldReturn:(UITextField *) textField;
@end
