//
//  ViewController.h
//  Weibing_A008
//
//  Created by wbing_Luzin on 6/7/13.
//  Copyright (c) 2013 CS6890. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "StreamCom.h"

#define PORT     22799
#define HOSTIP   @"129.123.7.215"

@interface ViewController : UIViewController
<UITextFieldDelegate, StreamComDelegate>
{
    
    IBOutlet UITextField *msgField;
    IBOutlet UITextView *chatView;
    IBOutlet UITextField *nameField;
    
    StreamCom *clientSC;
}

-(IBAction)LogOn;
-(IBAction)LogOut;
@end
