//
//  MapViewController.h
//  Weibing_Mileage_1
//
//  Created by wbing_Luzin on 5/24/13.
//  Copyright (c) 2013 USU. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#include "MyPoint.h"

@interface MapViewController : UIViewController
<MKMapViewDelegate, UITextFieldDelegate>
{
    CLLocationCoordinate2D coord;
}

@property (nonatomic) IBOutlet MKMapView *mapView;
@property (nonatomic) IBOutlet UIButton *mapButton;
@property (nonatomic) IBOutlet UITextField *textField;

-(IBAction) pressType;
-(BOOL) textFieldShouldReturn:(UITextField *)textField;
@end
