//
//  ViewController.m
//  Weibing_A008
//
//  Created by wbing_Luzin on 6/7/13.
//  Copyright (c) 2013 CS6890. All rights reserved.
//

#import "ViewController.h"


@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    //nameField.delegate = self;
    //chatView.delegate = self;
    msgField.delegate = self;
    
    clientSC = [[StreamCom alloc] init];
    clientSC.delegate = self;
}

-(IBAction)LogOn
{
    [clientSC initNetworkCommunications:HOSTIP port:PORT];
    NSString *userLogon = [NSString stringWithFormat:@"iam:%@", nameField.text];
    [clientSC sendMessage:userLogon];
}

-(IBAction)LogOut
{
    [clientSC closeNetworkCommunications];
    nameField.text = @"";
    msgField.text = @"";
    //chatView.text = @"";
}

-(BOOL) textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];

    NSString *msg = [NSString stringWithFormat:@"msg:%@", msgField.text];
    [clientSC sendMessage:msg];
    msgField.text = @"";
    return YES;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)dealloc
{
    msgField.delegate = nil;
}

-(void)stream:(StreamCom *)stream messageArrived:(NSString *)note
{
    chatView.text = [NSString stringWithFormat:@"%@ \n>%@", chatView.text, note];
}

@end
