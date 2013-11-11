//
//  SummaryViewController.h
//  Weibing_Mileage_1
//
//  Created by wbing_Luzin on 5/23/13.
//  Copyright (c) 2013 USU. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SummaryViewController : UIViewController
{

}

@property IBOutlet UILabel *numOfR;
@property IBOutlet UILabel *totalMiles;
@property IBOutlet UILabel *totalFuel;
@property IBOutlet UILabel *avgMileage;

@property int ct;
@property double sumOdo;
@property double sumFl;
@property BOOL flag;

-(IBAction) reset;

@end
