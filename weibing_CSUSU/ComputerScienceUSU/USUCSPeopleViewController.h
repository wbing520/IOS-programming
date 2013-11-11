//
//  USUCSPeopleViewController.h
//  ComputerScienceUSU
//
//  Created by wbing_Luzin on 6/21/13.
//  Copyright (c) 2013 CS6890. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface USUCSPeopleViewController : UIViewController
<UITableViewDataSource, UITableViewDelegate>
{
    NSMutableArray * peopleArray;
    IBOutlet UITableView *peopleTV;
}
@end
