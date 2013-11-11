//
//  USUCSLinkedInViewController.h
//  ComputerScienceUSU
//
//  Created by wbing_Luzin on 6/16/13.
//  Copyright (c) 2013 CS6890. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface USUCSLinkedInViewController : UIViewController
<UIWebViewDelegate, UIActionSheetDelegate>
{
    IBOutlet UIWebView *linkedinView;
    IBOutlet UIActivityIndicatorView *spinnerView;
}

@end
