//
//  MyPoint.m
//  Weibing_Mileage_1
//
//  Created by wbing_Luzin on 5/24/13.
//  Copyright (c) 2013 USU. All rights reserved.
//

#import "MyPoint.h"

@implementation MyPoint
@synthesize coordinate, title;

-(id) initWithCoord:(CLLocationCoordinate2D)loc title:(NSString *)t
{
    self = [super init];
    coordinate = loc;
    title = t;
    return  self;
}

-(NSString *)description
{
    return title;
}
@end
