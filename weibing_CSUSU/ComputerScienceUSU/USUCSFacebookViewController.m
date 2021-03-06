//
//  USUCSFacebookViewController.m
//  ComputerScienceUSU
//
//  Created by wbing_Luzin on 6/16/13.
//  Copyright (c) 2013 CS6890. All rights reserved.
//

#import "USUCSFacebookViewController.h"

@implementation USUCSFacebookViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        UITabBarItem *tbi = [self tabBarItem];
        tbi.Title = @"Facebook";
        tbi.image = [UIImage imageNamed:@"17f.png"];
    }
    return self;
}

- (void)loadWebPageWithString:(NSString *)urlString
{
    NSURL *url = [NSURL URLWithString:urlString];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    [facebookView loadRequest:request];
}

- (void) webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error
{
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Error loading web page"
                                                        message:[error localizedDescription] delegate:nil
                                              cancelButtonTitle:nil otherButtonTitles:@"OK", nil];
    [alertView show];
}

- (void)webViewDidStartLoad:(UIWebView *)webView
{
    [spinnerView startAnimating];
}

-(void)webViewDidFinishLoad:(UIWebView *)webView
{
    [spinnerView stopAnimating];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    facebookView.delegate = self;
    [self loadWebPageWithString:@"https://touch.facebook.com/USUComputerScience"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
