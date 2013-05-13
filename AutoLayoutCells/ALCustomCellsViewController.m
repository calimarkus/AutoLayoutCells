//
//  ALCustomCellsViewController.m
//  adsdsag
//
//  Created by Markus on 08.05.13.
//  Copyright (c) 2013 devmob. All rights reserved.
//

#import "ALCustomCellsViewController.h"

@interface ALCustomCellsViewController ()
- (IBAction)tap:(UITapGestureRecognizer*)sender;
@end

@implementation ALCustomCellsViewController

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
    if (indexPath.row == 1) {
        return self.subtitleCell;
    } else if (indexPath.row == 2) {
        return self.value2Cell;
    } else if (indexPath.row == 3) {
        return self.value1Cell;
    } else {
        return self.defaultCell;
    }
}

- (IBAction)tap:(UITapGestureRecognizer*)sender;
{
    if (sender.view.subviews.count < 1) {
        return;
    }
    
    UILabel *label1 = sender.view.subviews[0];
    UILabel *label2 = (sender.view.subviews.count > 1) ? sender.view.subviews[1] : nil;
    
    NSArray *texts = @[@"this is text",
                       @"Gustav Gans geht ganz gediegen.",
                       @"The fox chases the duck.",
                       @"Lipsum Ipsum, das ist ein langer Text. Lorem Larum.",
                       @"Hamburg verzichtet auf bis zu 244 Millionen Euro Schadensersatz"];
    
    label1.text = texts[arc4random()%texts.count];
    
    NSMutableArray *subArray = [texts mutableCopy];
    [subArray removeObject:label1.text];
    label2.text = subArray[arc4random()%subArray.count];
}


@end
