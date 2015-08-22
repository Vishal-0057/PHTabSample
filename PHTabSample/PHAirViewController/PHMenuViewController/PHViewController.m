//
//  PHViewController.m
//  PHAirViewController
//
//  Created by Ta Phuoc Hai on 2/11/14.
//  Copyright (c) 2014 Phuoc Hai. All rights reserved.
//

#import "PHViewController.h"
#import "PHAirViewController.h"
#import "AppDelegate.h"
#import "AViewController.h"
#import "BViewController.h"

@interface PHViewController () <UIAlertViewDelegate>
{
    UIAlertView *loginAlertView;
    UIAlertView *verifyAccountAlert ;
}
@end

@implementation PHViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self.view setBackgroundColor:[[UIColor whiteColor] colorWithAlphaComponent:0.2]];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(showMenu) name:@"ShowMenu" object:nil];
    [self configureNavBarForController];
}

- (void) viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
}

-(void)configureNavBarForController {
    
    UIBarButtonItem *menuButton = [[UIBarButtonItem alloc] initWithTitle:@"Menu" style:UIBarButtonItemStyleDone target:self action:@selector(showMenu)];
    menuButton.tintColor = [UIColor whiteColor];
    
    self.navigationItem.leftBarButtonItem = menuButton;
    
//    AViewController *aVC = [[AViewController alloc] initWithNibName:@"AViewController" bundle:nil];
//    UINavigationController *nav1 = [[UINavigationController alloc] initWithRootViewController:aVC];
//    [nav1 setTabBarItem:[[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemContacts tag:0]];
//    
//    BViewController *bVC = [[BViewController alloc] initWithNibName:@"bViewController" bundle:nil];
//    UINavigationController *nav2 = [[UINavigationController alloc] initWithRootViewController:bVC];
//    [nav2 setTabBarItem:[[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemDownloads tag:1]];
//    
//    self.tabBarController.viewControllers = [NSArray arrayWithObjects:nav1, nav2, nil];
//    [self.tabBarController.view setBackgroundColor:[UIColor greenColor]];
//    [self.view addSubview:self.tabBarController.view];
    
    
    
    self.tabBarC = [[UITabBarController alloc] init];
    AViewController *aVC = [[AViewController alloc] initWithNibName:@"AViewController" bundle:nil];
    UINavigationController *nav1 = [[UINavigationController alloc] initWithRootViewController:aVC];
    [nav1 setTabBarItem:[[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemContacts tag:0]];
    
    BViewController *bVC = [[BViewController alloc] initWithNibName:@"BViewController" bundle:nil];
    UINavigationController *nav2 = [[UINavigationController alloc] initWithRootViewController:bVC];
    [nav2 setTabBarItem:[[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemDownloads tag:1]];
    
    self.tabBarC.viewControllers = [NSArray arrayWithObjects:nav1, nav2, nil];
    [self.tabBarC setSelectedIndex:0];
    [self.view addSubview:self.tabBarC.view];
}

-(void)showMenu {
    [self.airViewController showAirViewFromViewController:self.navigationController complete:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)shouldAutorotate
{
    return YES;
}

- (NSUInteger)supportedInterfaceOrientations
{
//    if (isJWPlayerView == YES) {
//        return UIInterfaceOrientationMaskLandscape;
//    }
//    else {
        return UIInterfaceOrientationMaskPortrait;
//    }
}

@end
