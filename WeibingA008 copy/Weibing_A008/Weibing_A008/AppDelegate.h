//
//  AppDelegate.h
//  Weibing_A008
//
//  Created by wbing_Luzin on 6/7/13.
//  Copyright (c) 2013 CS6890. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "StreamCom.h"

@class ViewController;

@interface AppDelegate : UIResponder <UIApplicationDelegate>
{
    StreamCom *clientSC;
}

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) ViewController *viewController;

@end
