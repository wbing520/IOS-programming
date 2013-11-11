//
//  SummaryViewController.m
//  Weibing_Mileage_1
//
//  Created by wbing_Luzin on 5/23/13.
//  Copyright (c) 2013 USU. All rights reserved.
//

#import "SummaryViewController.h"

@implementation SummaryViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil 
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.navigationItem.title = @"Summary";
    }
    
    self.numOfR.text = [NSString stringWithFormat:@"%d", self.ct];
    self.totalMiles.text = [NSString stringWithFormat:@"%.2f",self.sumOdo];
    self.totalFuel.text = [NSString stringWithFormat:@"%.2f",self.sumFl];
    self.avgMileage.text = [NSString stringWithFormat:@"%.2f", (self.sumOdo/self.sumFl)];
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.flag = 1;
    self.sumOdo = 0;
    self.sumFl = 0;
    self.ct = 0;
    
    NSLog(@"flag %d", self.flag);
}

-(IBAction) reset
{
    self.numOfR.text = @"0";
    self.totalMiles.text = @"0";
    self.totalFuel.text = @"0";
    self.avgMileage.text = @"0";
    self.flag = 0;
    self.ct = 0;
    self.sumOdo = 0;
    self.sumFl = 0;
    
    NSLog(@"%d", self.flag);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
