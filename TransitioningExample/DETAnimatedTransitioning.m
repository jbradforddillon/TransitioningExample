//
//  DETAnimatedTransitioning.m
//  TransitioningExample
//
//  Created by Brad Dillon on 9/17/13.
//  Copyright (c) 2013 Double Encore. All rights reserved.
//

#import "DETAnimatedTransitioning.h"

static NSTimeInterval const DETAnimatedTransitionDuration = 0.5f;
static NSTimeInterval const DETAnimatedTransitionDurationForMarco = 0.15f;

@implementation DETAnimatedTransitioning

- (void)animateTransition:(id<UIViewControllerContextTransitioning>)transitionContext
{
    UIViewController *fromViewController = [transitionContext viewControllerForKey:UITransitionContextFromViewControllerKey];
    UIViewController *toViewController = [transitionContext viewControllerForKey:UITransitionContextToViewControllerKey];
    UIView *container = [transitionContext containerView];
    
    if (self.reverse) {
        [container insertSubview:toViewController.view belowSubview:fromViewController.view];
    }
    else {
        toViewController.view.transform = CGAffineTransformMakeScale(0, 0);
        [container addSubview:toViewController.view];
    }
    
    [UIView animateKeyframesWithDuration:DETAnimatedTransitionDuration delay:0 options:0 animations:^{
        if (self.reverse) {
            fromViewController.view.transform = CGAffineTransformMakeScale(0, 0);
        }
        else {
            toViewController.view.transform = CGAffineTransformIdentity;
        }
    } completion:^(BOOL finished) {
        [transitionContext completeTransition:finished];
    }];
}


- (NSTimeInterval)transitionDuration:(id<UIViewControllerContextTransitioning>)transitionContext
{
    return DETAnimatedTransitionDuration;
}

@end
