//
//  ProDetailedViewController.h
//  ComputerScienceUSU
//
//  Created by wbing_Luzin on 6/21/13.
//  Copyright (c) 2013 CS6890. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ProDetailedViewController : UIViewController
{
    NSMutableArray * proArray;
    int pIndex;
    //IBOutlet UITextView *disTV;
}

@property (nonatomic) IBOutlet UITextView *disTV;
-(id)initWithArray:(NSMutableArray *)pArray index:(int)n;
@end
