//
//  HistoryViewController.h
//  Weibing_Mileage_1
//
//  Created by wbing_Luzin on 5/24/13.
//  Copyright (c) 2013 USU. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Database.h"

@interface HistoryViewController : UITableViewController <UITableViewDelegate, UITableViewDataSource>
{
    //Database *db;
}

@property (nonatomic) IBOutlet UITableView *tableView;
@property (nonatomic) Database *db;
@property (nonatomic) NSMutableArray *lastRecords;

-(void) setArrayWithNSMutableArray:mgMutableArray;
- (NSInteger) numberOfSectionsInTableView: (UITableView *) tableView;
- (NSInteger) tableView: (UITableView *) tableView numberOfRowsInSection: (NSInteger) section;
- (UITableViewCell *) tableView: (UITableView *) tableView cellForRowAtIndexPath: (NSIndexPath *)
indexPath;

@end
