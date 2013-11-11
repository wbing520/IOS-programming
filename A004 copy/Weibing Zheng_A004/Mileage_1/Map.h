//
//  Map.h
//  Weibing_Mileage_1
//
//  Created by mb on 5/17/13.
//  Copyright (c) 2013 USU. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import "MyPoint.h"

@interface Map :
UIViewController <MKMapViewDelegate, UITextFieldDelegate>
{
    CLLocationCoordinate2D coord;
}
@property (nonatomic) IBOutlet MKMapView *mapView;
@property (nonatomic) IBOutlet UIButton *mapButton;
@property (nonatomic) IBOutlet UITextField *textField;

-(IBAction) changeMapType;

@end
