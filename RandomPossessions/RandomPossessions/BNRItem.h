//
//  BNRItem.h
//  RandomPossessions
//
//  Created by wbing_Luzin on 5/29/13.
//  Copyright (c) 2013 wbing_Luzin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRItem : NSObject
{
    NSString *itemName;
    NSString *serialNumber;
    int valueInDollars;
    NSDate *dateCreated;
}

+ (id) randomItem;

- (id) initWithItemName:(NSString *)name valueInDollars:(int)value serialNumber:(NSString *)sNumber;

-(void) setContainedItem:(BNRItem *)i;
-(BNRItem *) containedItem;

-(void)setContainer:(BNRItem*)i;
-(BNRItem *) container;


-(void) setItemName:(NSString *)str;
-(NSString *)itemName;

-(void) setSerialNumber:(NSString *)str;
-(NSString *) serialNumber;

-(void) setValueInDollars:(int) i;
-(int) valueInDollars;

-(NSDate *) dateCreated;

@end
