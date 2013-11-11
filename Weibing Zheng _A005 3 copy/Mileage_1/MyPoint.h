//
//  MyPoint.h
//  Weibing_Mileage_1
//
//  Created by wbing_Luzin on 5/24/13.
//  Copyright (c) 2013 USU. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>

@interface MyPoint : NSObject <MKAnnotation>
{
}
@property (nonatomic) CLLocationCoordinate2D coordinate;
@property (copy, nonatomic) NSString *title;

-(NSString *) description;
-(id) initWithCoord:(CLLocationCoordinate2D) loc title:(NSString *)t;

@end
