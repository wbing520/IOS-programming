//
//  USUCSNewsViewController.h
//  ComputerScienceUSU
//
//  Created by wbing_Luzin on 6/16/13.
//  Copyright (c) 2013 CS6890. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "USUCSAddNewsViewController.h"

@interface USUCSNewsViewController : UITableViewController
<UITableViewDelegate, UITableViewDataSource>
{
    UITableView *newsTableView;
    
    NSMutableArray *newsData;
}

@end
