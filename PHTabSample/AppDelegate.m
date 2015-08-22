//
//  AppDelegate.m
//  PHTabSample
//
//  Created by abhayam rastogi on 5/19/15.
//  Copyright (c) 2015 Intelligrape. All rights reserved.
//

#import "AppDelegate.h"

#import "AViewController.h"
#import "BViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    
    self.phview = [[PHViewController alloc] init];
    self.navcon = [[UINavigationController alloc] initWithRootViewController:self.phview];
    self.phmenuview = [[PHMenuViewController alloc] initWithRootViewController:self.navcon atIndexPath:[NSIndexPath indexPathForRow:0 inSection:0]];
    
//    self.tabBarC = [[UITabBarController alloc] init];
//    AViewController *aVC = [[AViewController alloc] initWithNibName:@"AViewController" bundle:nil];
//    UINavigationController *nav1 = [[UINavigationController alloc] initWithRootViewController:aVC];
//    [nav1 setTabBarItem:[[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemContacts tag:0]];
//    
//    BViewController *bVC = [[BViewController alloc] initWithNibName:@"BViewController" bundle:nil];
//    UINavigationController *nav2 = [[UINavigationController alloc] initWithRootViewController:bVC];
//    [nav2 setTabBarItem:[[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemDownloads tag:1]];
//    
//    self.tabBarC.viewControllers = [NSArray arrayWithObjects:nav1, nav2, nil];
//    [self.window setRootViewController:self.tabBarC];
//    [self.tabBarC setSelectedIndex:0];
    
    
    [self.window setRootViewController:self.phmenuview];
    [self.phmenuview didSelectRowAtIndex:[NSIndexPath indexPathForRow:0 inSection:0 ]];
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
