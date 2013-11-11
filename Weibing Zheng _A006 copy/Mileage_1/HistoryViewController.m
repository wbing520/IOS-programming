//
//  HistoryViewController.m
//  Weibing_Mileage_1
//
//  Created by wbing_Luzin on 5/24/13.
//  Copyright (c) 2013 USU. All rights reserved.
//

#import "HistoryViewController.h"
@implementation HistoryViewController
@synthesize tableView, db, lastRecords;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.navigationItem.title = @"History";
    }
    
    lastRecords = [[NSMutableArray alloc] init];
    
    return self;
}

-(void) setArrayWithNSMutableArray:mgMutableArray
{
    lastRecords = mgMutableArray;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    tableView.delegate = self;
    tableView.dataSource = self;
    
    NSLog(@"lastRecords %@", lastRecords.description);
}



- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger) tableView:(UITableView *)tabView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return lastRecords.count;
}

- (UITableViewCell *) tableView:(UITableView *)tabView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tabView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    // Configure the cell...
    MileageRecord *mRecord = [lastRecords objectAtIndex:indexPath.row];
    cell.textLabel.text = mRecord.description;
    //cell.textLabel.text = [NSString stringWithFormat:@"%@ mi %@ g %@",mileageRecord.mile,mileageRecord.gallon, mileageRecord.date];
    //cell.accessoryType = UITableViewCellAccessoryDetailDisclosureButton;
    return cell;
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
@end
