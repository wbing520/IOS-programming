//
//  ViewController.m
//  whereAMI
//
//  Created by yetc on 5/16/13.
//  Copyright (c) 2013 yetc. All rights reserved.
//

#import "ViewController.h"


@implementation ViewController

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

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *) nibBundleOrNil
{
    self =[super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    
    if(self){
        //create locatioin manager object
        locationManager =[[CLLocationManager alloc] init];
        
        locationManager.delegate = self;
        
        [locationManager setDesiredAccuracy:kCLLocationAccuracyBest];
        
        [locationManager startUpdatingLocation];
    }
    return self;
}

- (void) locationManager: (CLLocationManager*) manager didUpdateLocation:(CLLocation *)newLocation
fromLocation:(CLLocation *)oldLocation
{
    NSLog(@"%@", newLocation);
}

-(void) locationManager:(CLLocationManager *)manager didFailWithError:(NSError *) error
{
    NSLog(@"Could not find location: %@", error);
}


@end
