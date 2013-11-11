//
//  Database.m
//  Weibing_Mileage_1
//
//  Created by wbing_Luzin on 5/26/13.
//  Copyright (c) 2013 USU. All rights reserved.
//

#import "Database.h"

@implementation Database

- (id)init
{
    self = [super init];
    if (self) {
        mileageRecords = [[NSMutableArray alloc] init];
    }
    
   return self;
}

-(MileageRecord *) mileageRecordForIndex:(int)index
{
    return [mileageRecords objectAtIndex:index];
}

-(int) numberOfMileageRecords
{
    return mileageRecords.count;
}

-(void) addMileageRecord:(MileageRecord *)mileageRecord
{
    [mileageRecords addObject:mileageRecord];
}


/*-(void) loadDB
{}

-(void) loadDBWithMileageRecord: (MileageRecord *) mileageRecord
{
    mileageRecords = [[NSMutableArray alloc]init];
    
    //MileageRecord *mileageRecord = [[MileageRecord alloc] initWithMile:@"123" gallon:@"13" date:@"12/3/2013"];
    [mileageRecords addObject:mileageRecord];
    NSLog(@"%@", mileageRecords);
}

-(int) numberOfSectionsInTableView:(UITableView *)tabView
{
    return 1;
}

-(int) tableView:(UITableView *)tabView numberOfRowsInSection:(NSInteger)section
{
    return [self numberOfMileageRecords];
}

-(UITableViewCell *)tableView:(UITableView *)tabView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *unused = @"UNUSED";
    UITableViewCell *cell =[tabView dequeueReusableCellWithIdentifier:unused];
    
    if(cell == nil)
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:unused];
    
    //connect with the database
    MileageRecord *mileageRecord = [self mileageRecordForIndex:indexPath.row];
    cell.textLabel.text = mileageRecord.description;
    //cell.textLabel.text = [NSString stringWithFormat:@"%@ mi %@ g %@",mileageRecord.mile,mileageRecord.gallon, mileageRecord.date];
    //cell.accessoryType = UITableViewCellAccessoryDetailDisclosureButton;
    return cell;
}*/
@end


@implementation MileageRecord
@synthesize mile, gallon,date;
-(id) initWithMile:(NSString *)m gallon:(NSString *)g date:(NSString *)d
{
    self = [super init];
    mile = m;
    gallon = g;
    date = d;
    return self;
}

-(NSString *)description
{
    return [NSString stringWithFormat:@"%@ mi %@ g (%@)", mile, gallon, date];
}

@end