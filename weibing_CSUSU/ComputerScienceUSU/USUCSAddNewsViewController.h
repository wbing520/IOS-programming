//
//  USUCSAddNewsViewController.h
//  ComputerScienceUSU
//
//  Created by wbing_Luzin on 6/21/13.
//  Copyright (c) 2013 CS6890. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface USUCSAddNewsViewController : UIViewController
{
    IBOutlet UITextView * contentTV;
    IBOutlet UITextField *title;
    IBOutlet UIButton *saveBtn;
    
}

-(IBAction)save:(id)sender;
@end
