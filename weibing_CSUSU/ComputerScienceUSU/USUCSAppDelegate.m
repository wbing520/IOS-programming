//
//  USUCSAppDelegate.m
//  ComputerScienceUSU
//
//  Created by wbing_Luzin on 6/10/13.
//  Copyright (c) 2013 CS6890. All rights reserved.
//

#import "USUCSAppDelegate.h"

#import "USUCSViewController.h"
#import "CSHomeViewController.h"
#import "USUCSNewsViewController.h"
#import "USUCSFacebookViewController.h"
#import "USUCSLinkedInViewController.h"
#import "MapViewController.h"

@implementation USUCSAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    UITabBarController *tabBarCtr = [[UITabBarController alloc] init];
    UIViewController *vcWelcome = [[USUCSViewController alloc] init];
    UIViewController *vcHome = [[CSHomeViewController alloc] init];
    
    UIViewController *vcFacebook = [[USUCSFacebookViewController alloc] init];
    UIViewController *vcLinkedin = [[USUCSLinkedInViewController alloc] init];
    UIViewController *vcMap = [[MapViewController alloc] init];
    
    UINavigationController * navCtr =[[UINavigationController alloc] initWithRootViewController:vcHome];
    
    
    NSArray *ctrls = [NSArray arrayWithObjects: vcWelcome,navCtr, vcMap, vcLinkedin, vcFacebook,nil];
    
    [tabBarCtr setViewControllers:ctrls];
    [[self window] setRootViewController:tabBarCtr];
    
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
