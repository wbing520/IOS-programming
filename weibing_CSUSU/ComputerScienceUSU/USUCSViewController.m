//
//  USUCSViewController.m
//  ComputerScienceUSU
//
//  Created by wbing_Luzin on 6/10/13.
//  Copyright (c) 2013 CS6890. All rights reserved.
//

#import "USUCSViewController.h"


@implementation USUCSViewController

- (id) initWithNibName:(NSString *) nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if(self)
    {
        UITabBarItem *tbi = [self tabBarItem];
        tbi.Title = @"Welcome";
        tbi.image = [UIImage imageNamed:@"86-camera.png"];
        
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
