//
//  ALStandardCellsViewController.m
//  AutoLayoutTesting
//
//  Created by Markus on 10.05.13.
//  Copyright (c) 2013 devmob. All rights reserved.
//

#import "ALStandardCellsViewController.h"

@interface ALStandardCellsViewController ()
@end

@implementation ALStandardCellsViewController

- (void)viewDidLoad;
{
    [super viewDidLoad];
    self.tableView.rowHeight = 57;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section;
{
    return 4;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath;
{
    // create / dequeue cell
    NSString* identifier = [NSString stringWithFormat: @"cell%02d", indexPath.row];
    UITableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    if (cell == nil) {
        UITableViewCellStyle style;
        if (indexPath.row == 0) {
            style = UITableViewCellStyleSubtitle;
        } else if (indexPath.row == 1) {
            style = UITableViewCellStyleValue2;
        } else if (indexPath.row == 2) {
            style = UITableViewCellStyleValue1;
        } else {
            style = UITableViewCellStyleDefault;
        }
        
        cell = [[UITableViewCell alloc] initWithStyle:style reuseIdentifier:identifier];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
    }
    
    cell.textLabel.text = @"textLabel";
    cell.detailTextLabel.text = @"detailTextLabel";
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath;
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    UITableViewCell* cell = [tableView cellForRowAtIndexPath:indexPath];
    
    NSArray *texts = @[@"this is text",
                       @"Gustav Gans geht ganz gediegen.",
                       @"The fox chases the duck.",
                       @"Lipsum Ipsum, das ist ein langer Text. Lorem Larum.",
                       @"Hamburg verzichtet auf bis zu 244 Millionen Euro Schadensersatz"];
    
    cell.textLabel.text = texts[arc4random()%texts.count];
    
    NSMutableArray *subArray = [texts mutableCopy];
    [subArray removeObject:cell.textLabel.text];
    cell.detailTextLabel.text = subArray[arc4random()%subArray.count];
    
    [cell setNeedsLayout];
}

@end
