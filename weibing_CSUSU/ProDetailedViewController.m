//
//  ProDetailedViewController.m
//  ComputerScienceUSU
//
//  Created by wbing_Luzin on 6/21/13.
//  Copyright (c) 2013 CS6890. All rights reserved.
//

#import "ProDetailedViewController.h"


@implementation ProDetailedViewController
@synthesize disTV;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

-(id)initWithArray:(NSMutableArray *)pArray index:(int)n
{
    self = [super initWithNibName:@"ProDetailedViewController" bundle:nil];
    NSLog(@"received: %d", n);
    proArray = pArray;
    pIndex = n;
    NSString *t = [pArray objectAtIndex:n];
    [[self navigationItem] setTitle: t];
    
    return self;
}

-(NSString *) displayContentWithInt:(int)index
{
    NSString *s0 = @" Areas of Emphases     The Department of Computer Science provides strong learning and research capabilities in Bioinformatics, Parallel, Concurrent and Distributed Systems, Software Engineering and Artificial Intelligence. Research opportunities also exist in Compiler Design, Computer Graphics, Information Systems and Biomedical Systems.";
    NSString *s1 = @"The Department of Computer Science offers Master of Science in Computer Science and Master of Computer Science degrees. For more information contact the Department of Computer Science at 435-797-2451. ";
    NSString *s2 = @"The Department of Computer Science offers Master of Science in Computer Science and Master of Computer Science degrees. For more information contact the Department of Computer Science at 435-797-2451. ";
    NSString *s3 = @"The Computer Science Department at Utah State University offers a Bachelor's Degree in 5 different emphases. These include: Science, Digital Systems, Bioinformatics, Information Systems, and Information Technology. The Science, Digital Systems, Information Systems, and Bioinformatics Emphases are accredited by the CAC Accreditation Commission of ABET. ";
    
    switch (index) {
        case 0:
            return s0;
            break;
        case 1:
            return s1;
            break;
        case 2:
            return s2;
            break;
        case 3:
            return s3;
            break;
        default:
            return s3;
            break;
    }
}


- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    disTV.text = [self displayContentWithInt:pIndex];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
}

@end
