//
//  USUCSCourseViewController.m
//  ComputerScienceUSU
//
//  Created by wbing_Luzin on 6/21/13.
//  Copyright (c) 2013 CS6890. All rights reserved.
//

#import "USUCSCourseViewController.h"

@interface USUCSCourseViewController ()

@end

@implementation USUCSCourseViewController
@synthesize webView;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
-(void)loadWebPageWithString:(NSString *)urlString
{
    NSURL *url =[NSURL URLWithString:urlString];
    NSURLRequest *request=[NSURLRequest requestWithURL:url];
    [webView loadRequest:request];
}
- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    [self loadWebPageWithString:@"https://cs.usu.edu/files/uploads/CS_CourseDescriptions20102011.pdf"];
    [[self navigationItem] setTitle: @"Courses"];
}
-(void)webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error
{
    UIAlertView *alertView=[[UIAlertView alloc]initWithTitle:@"Error loading webpage" message:[error localizedDescription] delegate:nil cancelButtonTitle:@"OK" otherButtonTitles: nil];
    [alertView show];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
