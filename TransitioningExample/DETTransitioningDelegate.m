//
//  DETTransitioningDelegate.m
//  TransitioningExample
//
//  Created by Brad Dillon on 9/17/13.
//  Copyright (c) 2013 Double Encore. All rights reserved.
//

#import "DETTransitioningDelegate.h"
#import "DETAnimatedTransitioning.h"

@implementation DETTransitioningDelegate

- (id <UIViewControllerAnimatedTransitioning>)animationControllerForPresentedController:(UIViewController *)presented presentingController:(UIViewController *)presenting sourceController:(UIViewController *)source
{
    DETAnimatedTransitioning *transitioning = [DETAnimatedTransitioning new];
    return transitioning;
}


- (id <UIViewControllerAnimatedTransitioning>)animationControllerForDismissedController:(UIViewController *)dismissed
{
    DETAnimatedTransitioning *transitioning = [DETAnimatedTransitioning new];
    transitioning.reverse = YES;
    return transitioning;
}

@end
