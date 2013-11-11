//
//  BNRItem.m
//  RandomPossessions
//
//  Created by wbing_Luzin on 5/29/13.
//  Copyright (c) 2013 wbing_Luzin. All rights reserved.
//

#import "BNRItem.h"

@implementation BNRItem

-(void) dealloc
{
    NSLog(@"Destroyed: %@", self);
}

+(id) randomItem
{
    NSArray *randomAdjectiveList =[NSArray arrayWithObjects:@"Fluffy", @"Rusty", @"Shiny",nil];
    NSArray *randomNounList = [NSArray arrayWithObjects:@"Bear", @"Spork", @"Mac", nil];
    
    NSInteger adjectiveIndex = rand()%[randomAdjectiveList count];
    NSInteger nounIndex = rand()%[randomNounList count];
                                   
    NSString *randomName = [NSString stringWithFormat:@"%@, %@", [randomAdjectiveList objectAtIndex:adjectiveIndex],[randomNounList objectAtIndex:nounIndex]];
    int randomValue = rand()%100;
    
    NSString *randomSerialNumber = [NSString stringWithFormat:@"%c%c%c%c%c",
                                    '0' + rand()%10,
                                    'A' + rand()%26,
                                    '0' + rand()%10,
                                    'A' + rand()%26,
                                    '0' + rand()%10];
    BNRItem *newItem = [[self alloc] initWithItemName:randomName
                                   valueInDollars:randomValue
                                   serialNumber:randomSerialNumber];
                                   
    return newItem;
}

- (id) initWithItemName:(NSString *)name valueInDollars:(int)value serialNumber:(NSString *)sNumber
{
    self = [super init];
    if(self)
    {
        [self setItemName:name];
        [self setSerialNumber:sNumber];
        [self setValueInDollars:value];
    }
    dateCreated = [[NSDate alloc] init];
    
    return self;
}

-(void) setItemName:(NSString *)str
{
    itemName = str;
    
}
-(NSString *)itemName
{
    return itemName;
}

-(void) setSerialNumber:(NSString *)str
{
    serialNumber = str;
}
-(NSString *) serialNumber
{
    return serialNumber;
}

-(void) setValueInDollars:(int) i
{
    valueInDollars = i;
}
-(int) valueInDollars
{
    return valueInDollars;
}

-(NSDate *) dateCreated
{
    return dateCreated;
}

-(NSString *)description
{
    NSString *descriptionString = [[NSString alloc] initWithFormat:@"%@ (%@): Worth $%d, recorded on %@",
    itemName, serialNumber, valueInDollars, dateCreated ];
    
    return descriptionString;
}

@end
