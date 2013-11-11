//
//  main.m
//  RandomPossessions
//
//  Created by wbing_Luzin on 5/29/13.
//  Copyright (c) 2013 wbing_Luzin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRItem.h"
int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // insert code here...
        //NSLog(@"Hello, World!");
        
        //Create a mutable array object, store its address in items variable
        NSMutableArray *items = [[NSMutableArray alloc] init];
        
//        //send the message addObject to the NSMutableArray
//        [items addObject:@"one"];
//        [items addObject:@"Two"];
//        [items addObject:@"Three"];
//        
//        
//        [items insertObject:@"zero" atIndex:0];
//        
//        for(int i = 0; i < [items count]; i++)
//        {
//            NSLog(@"%@", [items objectAtIndex:i]);
//        }
//        
//        BNRItem *p = [[BNRItem alloc] init];
//        [p setItemName:@"red Sofa"];
//        [p setSerialNumber:@"aaaa111"];
//        [p setValueInDollars:100];
        
//        BNRItem *p = [[BNRItem alloc] initWithItemName:@"Red Sofa" valueInDollars:100 serialNumber:@"A1000"];
//        //NSLog(@"%@, %@, %@, %d", [p itemName], [p dateCreated], [p serialNumber], [p valueInDollars]);
//        NSLog(@"%@", p);
//        //destroy the array pointed to by items
        
        for(int i = 0; i < 10; i++){
            BNRItem *p = [BNRItem randomItem];
            [items addObject:p];
        }
        
//        for(int i = 0; i< [items count]; i++){
//            NSLog(@"%@", [items objectAtIndex:i]);
//        }
        
        for(BNRItem *item in items)
        {
            NSLog(@"%@", item);
        }
        
        NSLog(@"Setting items to to nil...");
        items = nil;
    }
    return 0;
}

