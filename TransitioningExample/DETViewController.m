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
    
    [self.view addGestureRecognizer:[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapRecognized)]];
}


- (void)tapRecognized
{
    DETOtherViewController *other = [DETOtherViewController new];
    other.transitioningDelegate = self.transitioningDelegate;
    [self presentViewController:other animated:YES completion:nil];
}

@end
