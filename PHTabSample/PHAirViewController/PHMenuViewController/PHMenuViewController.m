//
//  PHMenuViewController.m
//  PHAirTransaction
//
//  Created by Ta Phuoc Hai on 1/7/14.
//  Copyright (c) 2014 Phuoc Hai. All rights reserved.
//

#import "PHMenuViewController.h"
#import "AppDelegate.h"

#import "AViewController.h"
#import "BViewController.h"
#import "PHViewController.h"


@implementation PHMenuViewController{
    NSMutableArray *titles, *images, *segues, *highlightedImages, *viewControllers;
}

- (void)viewDidLoad {
    UIColor *redColor = [UIColor colorWithRed:232.0/255.0 green:18.0/255.0 blue:61.0/255.0 alpha:1.0];
    [self.navigationController.navigationBar setTitleTextAttributes:[NSDictionary dictionaryWithObject:redColor forKey:NSForegroundColorAttributeName]];
    [self.navigationController.navigationBar setTintColor:redColor];
    
    [self updateDefaultArrayValuesForMenu];
    
//    self.PHSegueRootIdentifier = segues[1];
    self.currentIndexPath = [NSIndexPath indexPathForRow:1 inSection:0];
    [self.view setBackgroundColor:[UIColor whiteColor]];
    [super viewDidLoad];
}

- (void) updateProfilePicNavigation {
    [self reloadData];
}

- (void) updateDefaultArrayValuesForMenu {
    // All Events screens merged into one called "Beams"
    images = [NSMutableArray arrayWithObjects:@"ic_placeholder_user_small", @"ic_home", nil];
    
    highlightedImages = [NSMutableArray arrayWithObjects:@"ic_placeholder_user_small", @"ic_home_pressed", nil];
    
    segues = [NSMutableArray arrayWithObjects: @"login", @"home", nil];
    
    titles = [NSMutableArray arrayWithObjects:@"Sign In / Register", @"Home", nil];
    
    
    AViewController *aVC = [[AViewController alloc] initWithNibName:@"AViewController" bundle:nil];
    UINavigationController *nav1 = [[UINavigationController alloc] initWithRootViewController:aVC];
    
    BViewController *bVC = [[BViewController alloc] initWithNibName:@"BViewController" bundle:nil];
    UINavigationController *nav2 = [[UINavigationController alloc] initWithRootViewController:bVC];
    
    viewControllers = [NSMutableArray arrayWithObjects:nav1, nav2, nil];
}

- (void) viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(updateProfilePicNavigation) name:@"ProfilePicUpdated" object:nil];
}

- (void) viewDidDisappear:(BOOL)animated {
    [super viewDidDisappear:animated];
    [[NSNotificationCenter defaultCenter] removeObserver:self name:@"ProfilePicUpdated" object:nil];
}
#pragma mark - PHAirMenuDelegate

- (NSInteger)numberOfSession {
    return 1;
}

- (NSInteger)numberOfRowsInSession:(NSInteger)sesion {
    return titles.count;
}

- (NSString*)titleForRowAtIndexPath:(NSIndexPath*)indexPath {
    return titles[indexPath.row];
}

- (NSString*)segueForRowAtIndexPath:(NSIndexPath*)indexPath {
    
    return segues[indexPath.row];
}

- (NSString *)imageForRowAtIndexPath:(NSIndexPath *)indexPath {
    return images[indexPath.row];
}

- (NSString *)highlightedImageForRowAtIndexPath:(NSIndexPath *)indexPath {
    return highlightedImages[indexPath.row];
}

- (UIViewController*)viewControllerForIndexPath:(NSIndexPath*)indexPath {
    return viewControllers[indexPath.row];
}

- (void)didSelectRowAtIndex:(NSIndexPath*)indexPath {
    
    self.tabBarController.viewControllers = [self.phViewController.tabBarController.viewControllers copy];
    [self.tabBarController setSelectedIndex:indexPath.row];
}

- (BOOL)shouldAutorotate
{
    return YES;
}

- (NSUInteger)supportedInterfaceOrientations
{
    return UIInterfaceOrientationMaskPortrait;
}

@end