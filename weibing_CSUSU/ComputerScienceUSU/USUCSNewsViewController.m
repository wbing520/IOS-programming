//
//  USUCSNewsViewController.m
//  ComputerScienceUSU
//
//  Created by wbing_Luzin on 6/16/13.
//  Copyright (c) 2013 CS6890. All rights reserved.
//

#import "USUCSNewsViewController.h"


@implementation USUCSNewsViewController

- (id) initWithNibName:(NSString *) nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if(self)
    {
            }
    return self;
}


- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [[self navigationItem] setTitle: @"News"];
    self.navigationItem.rightBarButtonItem = self.editButtonItem;
    //UIBarButtonItem * bbi = [[UIBarButtonItem alloc] initWithTitle:@"Add" style:UIBarButtonItemStyleBordered target:self action:@selector(addBtn:)];
    //self.navigationItem.rightBarButtonItem = bbi;
    newsData = [[NSMutableArray alloc] initWithObjects:@"NSF Grant Awarded to Develop User Privacy in the Cloud", @"Opportunity for international PhD students and faculty.",@"Multiscale Spatial and Temporal Dynamics of Yeast Colony Development.",nil];
}

-(IBAction)addBtn:(id)sender
{
    USUCSAddNewsViewController *addnewsVC = [[USUCSAddNewsViewController alloc] initWithNibName:@"USUCSAddNewsViewController" bundle:nil];
    [[self navigationController] pushViewController:addnewsVC animated:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return newsData.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    // Configure the cell...
    cell.textLabel.text = [newsData objectAtIndex:indexPath.row];
    //cell.imageView.image = [UIImage imageNamed:@"MS-images.jpeg"];
    cell.accessoryType = UITableViewCellAccessoryDetailDisclosureButton;
    
    return cell;
}


-(void)tableView:(UITableView *)tableView accessoryButtonTappedForRowWithIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"passing index %d", indexPath.row);
    //USUCSAddNewsViewController *detailVC = [[USUCSAddNewsViewController alloc] init];
    //[[self navigationController] pushViewController:detailVC animated:YES];
}

@end
