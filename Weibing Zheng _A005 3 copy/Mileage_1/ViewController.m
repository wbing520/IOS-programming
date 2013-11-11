//
//  ViewController.m
//  Mileage_1
//
//  Created by mb on 5/9/13.
//  Copyright (c) 2013 USU. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

static int count = 0;
static double sumOdometer = 0;
static double sumFuel = 0;

- (void)viewDidLoad
{
    [super viewDidLoad];
    [odometerField setDelegate:self];
    [fuelField setDelegate:self];
    odometerField.keyboardType = UIKeyboardTypeNumberPad;
    fuelField.keyboardType = UIKeyboardTypeNumberPad;
    
    dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setTimeStyle:NSDateFormatterMediumStyle];
    [dateFormatter setDateStyle:NSDateFormatterMediumStyle];
    [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(setTime:) userInfo:nil repeats:YES];
    
    sVC = [[SummaryViewController alloc] initWithNibName:@"SummaryViewController" bundle:nil];
    mapVC = [[MapViewController alloc] initWithNibName:@"MapViewController" bundle:nil];
}

-(void) setTime:(id)sender
{
    NSString *currentTime = [dateFormatter stringFromDate: [NSDate date]];
    date.text = currentTime;
}


-(id) initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle: nibBundleOrNil];
    if(self)
    {
        self.navigationItem.title = @"Mileage Mngr";
        UIBarButtonItem *bbi = [[UIBarButtonItem alloc] initWithTitle:@"summary" style:UIBarButtonItemStyleBordered target:self action:@selector(sumButton:)];
        self.navigationItem.rightBarButtonItem = bbi;
        
        UIBarButtonItem *bbi2 = [[UIBarButtonItem alloc] initWithTitle:@"map" style:UIBarButtonItemStyleBordered target:self action:@selector(mapButton:)];
        self.navigationItem.leftBarButtonItem = bbi2;
    }
    return self;
}

-(IBAction) sumButton:(id) sender
{
    [[self navigationController] pushViewController:sVC animated:YES];
    NSLog(@"go to Summary ViewController");
    sVC.ct = count;
    sVC.sumOdo = sumOdometer;
    sVC.sumFl = sumFuel;
    if(sVC.flag){
        sVC.numOfR.text = [NSString stringWithFormat:@"%d", count];
        sVC.totalMiles.text = [NSString stringWithFormat:@"%.2f",sumOdometer];
        sVC.totalFuel.text = [NSString stringWithFormat:@"%.2f",sumFuel];
        sVC.avgMileage.text = [NSString stringWithFormat:@"%.2f", (sumOdometer/sumFuel)];
    }
}

-(IBAction)mapButton:(id) sender
{   
    [[self navigationController] pushViewController:mapVC animated:YES];
    NSLog(@"go to mapViewController");
}

-(BOOL) textFieldShouldReturn:(UITextField *) textField
{
    [textField resignFirstResponder];
    return YES;
}

-(IBAction) pressButton
{
    if(!sVC.flag)
    {
        count = 0;
        sumOdometer = 0;
        sumFuel = 0;
        sVC.flag = 1;
    }
    
    double odoInt = [odometerField.text doubleValue];
    double fuelAdded = [fuelField.text doubleValue];
    float result = odoInt/fuelAdded;
    milageLabel.text = [NSString stringWithFormat:@"%.2f mpg", result];
    
    count++;
    sumOdometer += odoInt;
    sumFuel += fuelAdded;
    
    NSLog(@"count is %d ", count);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
