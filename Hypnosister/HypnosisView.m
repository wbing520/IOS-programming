//
//  HypnosisView.m
//  Hypnosister
//
//  Created by wbing_Luzin on 6/1/13.
//  Copyright (c) 2013 wbing_Luzin. All rights reserved.
//

#import "HypnosisView.h"

@implementation HypnosisView

- (void) drawRect:(CGRect)dirtyRect
{
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    CGRect bounds = [self bounds];
    
    CGPoint center;
    center.x = bounds.origin.x + bounds.size.width /2.0;
    center.y = bounds.origin.y + bounds.size.height /2.0;
    
    float maxRedius = hypot( bounds.size.width, bounds.size.height) /2.0;
    
    CGContextSetLineWidth(ctx, 10);
    
    CGContextSetRGBStrokeColor(ctx, 0.6, 0.6, 0.6, 1.0);
    
    for(float currentRadius = maxRedius; currentRadius > 0; currentRadius -= 20)
    {
        CGContextAddArc(ctx, center.x, center.y, maxRedius, 0.0, M_PI * 2.0, YES);
    
        CGContextStrokePath(ctx);
    }
}

- (id) initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if(self)
    {
        [self setBackgroundColor:[UIColor clearColor]];
    }
    
    return self;
}
@end
