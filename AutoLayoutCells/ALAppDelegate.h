//
//  ALAppDelegate.h
//  AutoLayoutTesting
//
//  Created by Markus on 08.05.13.
//  Copyright (c) 2013 devmob. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ALStartViewController;

@interface ALAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) ALStartViewController *viewController;

@end
