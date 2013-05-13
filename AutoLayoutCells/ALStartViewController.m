//
//  ALStartViewController.m
//  AutoLayoutTesting
//
//  Created by Markus on 10.05.13.
//  Copyright (c) 2013 devmob. All rights reserved.
//

#import "ALCustomCellsViewController.h"
#import "ALStandardCellsViewController.h"

#import "ALStartViewController.h"

@interface ALStartViewController ()
@end

@implementation ALStartViewController

- (void)viewDidLoad;
{
    [super viewDidLoad];
    self.tableView.rowHeight = 57;
    self.title = @"AutoLayout Example";
    self.navigationItem.backBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Back"
                                                                             style:UIBarButtonItemStyleBordered
                                                                            target:nil action:nil];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section;
{
    return 2;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath;
{
    // create / dequeue cell
    static NSString* identifier = @"identifier";
    UITableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
        cell.selectionStyle = UITableViewCellSelectionStyleGray;
    }
    
    if (indexPath.row == 0) {
        cell.textLabel.text = @"Standard Cells";
    } else {
        cell.textLabel.text = @"Custom AutoLayout Cells";
    }
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath;
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    UIViewController *viewController;
    if (indexPath.row == 0) {
        viewController = [[ALStandardCellsViewController alloc] init];
    } else {
        viewController = [[ALCustomCellsViewController alloc] init];
    }
    viewController.title = [tableView cellForRowAtIndexPath:indexPath].textLabel.text;
    [self.navigationController pushViewController:viewController animated:YES];
}

@end
