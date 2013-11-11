//
//  Database.h
//  Weibing_Mileage_1
//
//  Created by wbing_Luzin on 5/26/13.
//  Copyright (c) 2013 USU. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MileageRecord :NSObject

@property (nonatomic, copy) NSString *mile;
@property (nonatomic, copy) NSString *gallon;
@property (nonatomic, copy) NSString *date;
-(id) initWithMile:(NSString *) m gallon:(NSString *)g date:(NSString *)d;
-(NSString *)description;
@end

@interface Database : NSObject <UITableViewDataSource>
{
    NSMutableArray *mileageRecords;
}

-(MileageRecord *) mileageRecordForIndex:(int)index;
-(void) addMileageRecord:(MileageRecord *) mileageRecord;
-(int) numberOfMileageRecords;
//-(void)loadDBWithMileageRecord:(MileageRecord *) mileageRecord;
//-(void) loadDB;
@end
