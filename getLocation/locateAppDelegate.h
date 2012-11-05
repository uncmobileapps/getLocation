//
//  locateAppDelegate.h
//  getLocation
//
//  Created by Matt Hayes on 11/5/12.
//  Copyright (c) 2012 Matt Hayes. All rights reserved.
//

#import <UIKit/UIKit.h>

@class locateViewController;

@interface locateAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) locateViewController *viewController;

@end
