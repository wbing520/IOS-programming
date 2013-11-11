//
//  CSHomeViewController.h
//  ComputerScienceUSU
//
//  Created by wbing_Luzin on 6/12/13.
//  Copyright (c) 2013 CS6890. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "USUCSNewsViewController.h"
#import "USUCSChatViewController.h"
#import "USUCSAboutViewController.h"
#import "USUCSContactViewController.h"
#import "USUCSCourseViewController.h"
#import "USUCSPeopleViewController.h"
#import "USUCSResearchViewController.h"
#import "USUCSProgramViewController.h"

@interface CSHomeViewController : UIViewController
{
}

-(IBAction)newsBtn;
-(IBAction)aboutBtn;
-(IBAction)programBtn:(id)sender;
-(IBAction)researchBtn:(id)sender;
-(IBAction)peopleBtn:(id)sender;
-(IBAction)coursesBtn:(id)sender;
-(IBAction)contactBtn:(id)sender;
-(IBAction)chatBtn:(id)sender;
@end
