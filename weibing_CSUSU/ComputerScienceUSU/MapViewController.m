//
//  MapViewController.m
//  Weibing_Mileage_1
//
//  Created by wbing_Luzin on 5/24/13.
//  Copyright (c) 2013 USU. All rights reserved.
//

#import "MapViewController.h"

@implementation MapViewController
@synthesize mapView, textField;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.navigationItem.title = @"Map";
        
        UITabBarItem *tbi = [self tabBarItem];
        tbi.Title = @" Map ";
        tbi.image = [UIImage imageNamed:@"35Map.png"];
    }
    return self;
}

-(IBAction)pressType
{
    if(mapView.mapType == MKMapTypeStandard)
    {
        mapView.mapType = MKMapTypeHybrid;
    }
    else
        mapView.mapType = MKMapTypeSatellite;
}

-(void) mapView: (MKMapView *)map didUpdateUserLocation:(MKUserLocation *) userLocation
{
    MKCoordinateRegion region;
    coord = userLocation.coordinate;
    
    coord.longitude = -111.815759;
    coord.latitude = 41.74095;
    
    region = MKCoordinateRegionMakeWithDistance(coord, 1000, 1000);
    [mapView setRegion:region animated: YES];
}

-(BOOL) textFieldShouldReturn:(UITextField *) tf
{
    [tf resignFirstResponder];
    
    MyPoint *myPoint = [[MyPoint alloc] initWithCoord:coord title: tf.text];
    [mapView addAnnotation:myPoint];
    
    return YES;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    mapView.delegate = self;
    mapView.userTrackingMode = MKUserTrackingModeFollow;
   
    textField.delegate = self;
    [mapView setShowsUserLocation:YES];
    
    coord.longitude = -111.815759;
    coord.latitude = 41.74095;
    NSString *text = @"Computer Science Dept,USU";
    
    MyPoint *myPoint = [[MyPoint alloc] initWithCoord:coord title: text];
    [mapView addAnnotation:myPoint];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
