//
//  PHMenuViewController.h
//  PHAirTransaction
//
//  Created by Ta Phuoc Hai on 1/7/14.
//  Copyright (c) 2014 Phuoc Hai. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PHAirViewController.h"
#import "PHViewController.h"

@interface PHMenuViewController : PHAirViewController <PHAirMenuDelegate>

- (void) logout;
- (void)removeUserInfo;
- (void) refreshHomeScreen;

@property (nonatomic, strong) PHViewController *phViewController;

@end
