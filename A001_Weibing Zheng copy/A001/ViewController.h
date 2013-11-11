//
//  ViewController.h
//  A001
//
//  Created by Student on 5/7/13.
//  Copyright (c) 2013 IOSProgramming. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    IBOutlet UIButton *myButton;
    IBOutlet UILabel *name;
    IBOutlet UILabel *address;
    IBOutlet UILabel *city;
    IBOutlet UILabel *homePhone;
    IBOutlet UILabel *emergencyLabel;
    IBOutlet UILabel *emergencyPhone;
    bool flag;
}

-(IBAction) buttonPressed;

@end
