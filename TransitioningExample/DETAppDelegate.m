//
//  DETAppDelegate.m
//  TransitioningExample
//
//  Created by Brad Dillon on 9/17/13.
//  Copyright (c) 2013 Double Encore. All rights reserved.
//

#import "DETAppDelegate.h"
#import "DETTransitioningDelegate.h"

@interface DETAppDelegate ()
@property (nonatomic, strong) DETTransitioningDelegate *transitioningDelegate;
@end

@implementation DETAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.transitioningDelegate = [DETTransitioningDelegate new];
    self.window.rootViewController.transitioningDelegate = self.transitioningDelegate;
    
    return YES;
}

@end
