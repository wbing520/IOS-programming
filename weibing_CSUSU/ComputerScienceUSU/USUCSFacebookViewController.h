//
//  USUCSFacebookViewController.h
//  ComputerScienceUSU
//
//  Created by wbing_Luzin on 6/16/13.
//  Copyright (c) 2013 CS6890. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface USUCSFacebookViewController :
UIViewController <UIWebViewDelegate, UIActionSheetDelegate>
{
    IBOutlet UIWebView *facebookView;
    IBOutlet UIActivityIndicatorView *spinnerView;
 
}
@end
