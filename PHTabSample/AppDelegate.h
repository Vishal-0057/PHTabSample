//
//  AppDelegate.h
//  PHTabSample
//
//  Created by abhayam rastogi on 5/19/15.
//  Copyright (c) 2015 Intelligrape. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PHViewController.h"
#import "PHMenuViewController.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) PHViewController *phview;
@property (strong, nonatomic) PHMenuViewController *phmenuview;
@property (strong, nonatomic) UINavigationController *navcon;

@property (strong, nonatomic) UITabBarController *tabBarC;

@end

