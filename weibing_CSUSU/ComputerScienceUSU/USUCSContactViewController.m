//
//  USUCSContactViewController.m
//  ComputerScienceUSU
//
//  Created by wbing_Luzin on 6/21/13.
//  Copyright (c) 2013 CS6890. All rights reserved.
//

#import "USUCSContactViewController.h"

@interface USUCSContactViewController ()

@end

@implementation USUCSContactViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
//send email
-(IBAction)sendEmailBtn:(id)sender
{
    if([MFMailComposeViewController canSendMail])
    {
        MFMailComposeViewController *controller=[[MFMailComposeViewController alloc]init];
        controller.mailComposeDelegate=self;
        NSArray *dest=[[NSArray alloc]initWithObjects:@"weibing.zheng@aggiemail.usu.edu", nil];
        [controller setSubject:@"Feedback"];
        [controller setToRecipients:dest];
        [controller setMessageBody:@"Support Staff:" isHTML:NO];
        if (controller)
            [self presentViewController:controller animated:YES completion:nil];
    }
}

-(void)mailComposeController:(MFMailComposeViewController *)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError *)error
{
    switch ((int)result)
    {
        case MFMailComposeResultFailed:
            NSLog(@"failed");
        case MFMailComposeResultCancelled:
            NSLog(@"cancelled");
        case MFMailComposeResultSent:
            NSLog (@"send");
        case MFMailComposeResultSaved:
            NSLog(@"saved");
            break;
    }
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    [[self navigationItem] setTitle: @"Contact Us"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
