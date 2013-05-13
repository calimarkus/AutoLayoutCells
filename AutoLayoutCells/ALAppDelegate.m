//
//  ALAppDelegate.m
//  adsdsag
//
//  Created by Markus on 08.05.13.
//  Copyright (c) 2013 devmob. All rights reserved.
//

#import "ALStartViewController.h"

#import "ALAppDelegate.h"


@implementation ALAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // setup main controller
    self.viewController = [[ALStartViewController alloc] initWithStyle:UITableViewStyleGrouped];
    UINavigationController *navController = [[UINavigationController alloc] initWithRootViewController:self.viewController];
    
    // seutp window
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.rootViewController = navController;
    [self.window makeKeyAndVisible];
    
    return YES;
}

@end
