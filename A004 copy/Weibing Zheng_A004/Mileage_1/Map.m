//
//  Map.m
//  Weibing_Mileage_1
//
//  Created by mb on 5/17/13.
//  Copyright (c) 2013 USU. All rights reserved.
//

#import "Map.h"


@implementation Map
@synthesize mapView, textField;

- (void)viewDidLoad
{
    [super viewDidLoad];
    mapView.delegate = self;
    mapView.userTrackingMode = MKUserTrackingModeFollow;
    textField.delegate = self;
    [mapView setShowsUserLocation:YES];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (id) initWithNibName:(NSString *) nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if(self)
    {
        UITabBarItem *tbi = [self tabBarItem];
        tbi.Title = @"Map";
        tbi.image = [UIImage imageNamed:@"86-camera.png"];    }
    return self;
}

-(IBAction)changeMapType
{
    if(mapView.mapType == MKMapTypeStandard)
        mapView.mapType = MKMapTypeHybrid;
    else
        mapView.mapType = MKMapTypeSatellite;
}

-(void) mapView: (MKMapView *)map didUpdateUserLocation:(MKUserLocation *) userLocation
{
    MKCoordinateRegion region;
    coord = userLocation.coordinate;
    region = MKCoordinateRegionMakeWithDistance(coord, 300, 300);
    [mapView setRegion:region animated: YES];
}

-(BOOL) textFieldShouldReturn:(UITextField *) tf
{
    [tf resignFirstResponder];
    MyPoint *myPoint = [[MyPoint alloc] initWithCoord:coord title: tf.text];
    [mapView addAnnotation:myPoint];
    
    return YES;
}
@end
