//
//  USUCSPeopleViewController.m
//  ComputerScienceUSU
//
//  Created by wbing_Luzin on 6/21/13.
//  Copyright (c) 2013 CS6890. All rights reserved.
//

#import "USUCSPeopleViewController.h"

@interface USUCSPeopleViewController ()

@end

@implementation USUCSPeopleViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return peopleArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    // Configure the cell...
    cell.textLabel.text = [peopleArray objectAtIndex:indexPath.row];
    //cell.imageView.image = [UIImage imageNamed:@"MS-images.jpeg"];
    //cell.accessoryType = UITableViewCellAccessoryDetailDisclosureButton;
    
    return cell;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    [[self navigationItem] setTitle: @"People"];
    peopleArray = [[NSMutableArray alloc] initWithObjects:@"Dr. Vicki H.Allan", @"Dr. Scott Cannon",@"Dr. Heng-Da Cheng",@"Dr. Stephen Clyde",@"Dr. Donald Cooley",@"Dr. Nicholas Flann",@"Dr. Minghui Jiang",@"Dr. Vladimir Kulyukin",@"Dr. Ming Li",@"Dr. Xiaojun Qi",@"Dr. Dan Watson",nil];
    
    
    peopleTV.delegate = self;
    peopleTV.dataSource = self;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
