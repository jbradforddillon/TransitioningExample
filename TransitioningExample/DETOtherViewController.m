//
//  DETOtherViewController.m
//  TransitioningExample
//
//  Created by Brad Dillon on 9/17/13.
//  Copyright (c) 2013 Double Encore. All rights reserved.
//

#import "DETOtherViewController.h"


@interface DETOtherViewController ()

@end

@implementation DETOtherViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor grayColor];
    
    [self.view addGestureRecognizer:[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapRecognized)]];
}


- (void)tapRecognized
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
