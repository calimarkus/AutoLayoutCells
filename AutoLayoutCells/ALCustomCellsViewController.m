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

- (IBAction)tap:(UITapGestureRecognizer*)sender;
{
    if (sender.view.subviews.count < 2) {
        return;
    }
    
    UILabel *label1 = sender.view.subviews[0];
    UILabel *label2 = sender.view.subviews[1];
    
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
