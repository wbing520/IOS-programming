//
//  ViewController.h
//  whereAMI
//
//  Created by yetc on 5/16/13.
//  Copyright (c) 2013 yetc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>

@interface ViewController : UIViewController<CLLocationManagerDelegate>
{
    CLLocationManager *locationManager;
}

@end
