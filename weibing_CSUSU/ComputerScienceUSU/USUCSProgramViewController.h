//
//  USUCSProgramViewController.h
//  ComputerScienceUSU
//
//  Created by wbing_Luzin on 6/21/13.
//  Copyright (c) 2013 CS6890. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ProDetailedViewController.h"

@interface USUCSProgramViewController : UIViewController
<UITableViewDataSource, UITableViewDelegate>
{
    NSMutableArray * programArray;
    IBOutlet UITableView *programTableView;
}
@end
