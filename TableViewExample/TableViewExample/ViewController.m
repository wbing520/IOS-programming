//
//  ViewController.m
//  TableViewExample
//
//  Created by wbing_Luzin on 5/28/13.
//  Copyright (c) 2013 wbing_Luzin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    //Initialize the array.
    listOfItems = [[NSMutableArray alloc] init];
    
    //Add items
    [listOfItems addObject:@"Iceland"];
    [listOfItems addObject:@"Greenland"];
    [listOfItems addObject:@"Switzerland"];
    [listOfItems addObject:@"Norway"];
    [listOfItems addObject:@"New Zealand"];
    [listOfItems addObject:@"Greece"];
    [listOfItems addObject:@"Rome"];
    [listOfItems addObject:@"Ireland"];
    
    //Set the title
    self.navigationItem.title = @"Countries";
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [listOfItems count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
       cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    // Set up the cell...
    NSString *cellValue = [listOfItems objectAtIndex:indexPath.row];
    cell.textLabel.text = cellValue;
    
    return cell;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
