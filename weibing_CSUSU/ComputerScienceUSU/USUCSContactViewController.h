//
//  USUCSContactViewController.h
//  ComputerScienceUSU
//
//  Created by wbing_Luzin on 6/21/13.
//  Copyright (c) 2013 CS6890. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MessageUI/MessageUI.h>
#import <MessageUI/MFMailComposeViewController.h>

@interface USUCSContactViewController : UIViewController<MFMailComposeViewControllerDelegate>


-(IBAction)sendEmailBtn:(id)sender;
@end
