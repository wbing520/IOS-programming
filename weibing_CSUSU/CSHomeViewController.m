//
//  CSHomeViewController.m
//  ComputerScienceUSU
//
//  Created by wbing_Luzin on 6/12/13.
//  Copyright (c) 2013 CS6890. All rights reserved.
//

#import "CSHomeViewController.h"

@implementation CSHomeViewController



- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        UITabBarItem *tbi = [self tabBarItem];
        tbi.Title = @"Home";
        tbi.image = [UIImage imageNamed:@"86-camera.png"];
    }
    return self;
}

-(IBAction)newsBtn
{
    USUCSNewsViewController *newsVC = [[USUCSNewsViewController alloc] initWithNibName:@"USUCSNewsViewController" bundle:nil];
    [[self navigationController] pushViewController:newsVC animated:YES];
}

-(IBAction)aboutBtn
{
    USUCSAboutViewController *aboutVC = [[USUCSAboutViewController alloc] initWithNibName:@"USUCSAboutViewController" bundle:nil];
    [[self navigationController] pushViewController:aboutVC animated:YES];
    

}

-(IBAction)programBtn:(id)sender
{
    USUCSProgramViewController *programVC = [[USUCSProgramViewController alloc] initWithNibName:@"USUCSProgramViewController" bundle:nil];
    [[self navigationController] pushViewController:programVC animated:YES];
}

-(IBAction)researchBtn:(id)sender
{
    USUCSResearchViewController *researchVC = [[USUCSResearchViewController alloc] initWithNibName:@"USUCSResearchViewController" bundle:nil];
    [[self navigationController] pushViewController:researchVC animated:YES];
}

-(IBAction)peopleBtn:(id)sender
{
    USUCSPeopleViewController *peopleVC = [[USUCSPeopleViewController alloc] initWithNibName:@"USUCSPeopleViewController" bundle:nil];
    [[self navigationController] pushViewController:peopleVC animated:YES];
}

-(IBAction)coursesBtn:(id)sender
{
    USUCSCourseViewController *coursesVC = [[USUCSCourseViewController alloc] initWithNibName:@"USUCSCourseViewController" bundle:nil];
    [[self navigationController] pushViewController:coursesVC animated:YES];
}

-(IBAction)contactBtn:(id)sender
{
    USUCSContactViewController *contactVC = [[USUCSContactViewController alloc] initWithNibName:@"USUCSContactViewController" bundle:nil];
    [[self navigationController] pushViewController:contactVC animated:YES];
}

-(IBAction)chatBtn:(id)sender
{
    USUCSChatViewController *chatVC = [[USUCSChatViewController alloc] initWithNibName:@"USUCSChatViewController" bundle:nil];
    [[self navigationController] pushViewController:chatVC animated:YES];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    [[self navigationItem] setTitle: @"Home"];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
