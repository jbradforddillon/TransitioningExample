//
//  DETViewController.m
//  TransitioningExample
//
//  Created by Brad Dillon on 9/17/13.
//  Copyright (c) 2013 Double Encore. All rights reserved.
//

#import "DETViewController.h"
#import "DETOtherViewController.h"

@interface DETViewController ()

@end

@implementation DETViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
}


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    DETOtherViewController *other = (DETOtherViewController *)segue.destinationViewController;
    other.transitioningDelegate = self.transitioningDelegate;
}


@end
