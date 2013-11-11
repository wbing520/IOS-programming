//
//  USUCSChatViewController.m
//  ComputerScienceUSU
//
//  Created by wbing_Luzin on 6/21/13.
//  Copyright (c) 2013 CS6890. All rights reserved.
//

#import "USUCSChatViewController.h"

@interface USUCSChatViewController ()

@end

@implementation USUCSChatViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

-(IBAction)LogOn
{
    [clientSC initNetworkCommunications:HOSTIP port:PORT];
    NSString *userLogon = [NSString stringWithFormat:@"iam:%@", nameField.text];
    [clientSC sendMessage:userLogon];
}

-(void)dealloc
{
    msgField.delegate = nil;
}

-(void)stream:(StreamCom *)stream messageArrived:(NSString *)note
{
    chatView.text = [NSString stringWithFormat:@"%@ \n>%@", chatView.text, note];
}

-(BOOL) textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    
    NSString *msg = [NSString stringWithFormat:@"msg:%@", msgField.text];
    [clientSC sendMessage:msg];
    msgField.text = @"";
    return YES;
}

-(IBAction)LogOut
{
    [clientSC closeNetworkCommunications];
    nameField.text = @"";
    msgField.text = @"";
    //chatView.text = @"";
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    msgField.delegate = self;
    
    clientSC = [[StreamCom alloc] init];
    clientSC.delegate = self;
    [[self navigationItem] setTitle: @"Chat With Us"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
