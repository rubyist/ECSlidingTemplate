//
//  TopViewController.m
//  SlidingTest
//
//  Created by Scott Barron on 7/31/12.
//  Copyright (c) 2012 Scott Barron. All rights reserved.
//

#import "TopViewController.h"
#import "UnderLeftViewController.h"
#import "UnderRightViewController.h"

@implementation TopViewController

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    // shadowPath, shadowOffset, and rotation is handled by ECSlidingViewController.
    // You just need to set the opacity, radius, and color.
    self.view.layer.shadowOpacity = 0.75f;
    self.view.layer.shadowRadius = 10.0f;
    self.view.layer.shadowColor = [UIColor blackColor].CGColor;

    UnderLeftViewController *left = [[UnderLeftViewController alloc] init];
    [[self slidingViewController] setUnderLeftViewController:left];
    
    UnderRightViewController *right = [[UnderRightViewController alloc] init];
    [[self slidingViewController] setUnderRightViewController:right];
    
    [self.view addGestureRecognizer:self.slidingViewController.panGesture];
}

- (IBAction)showLeft:(id)sender {
    [self.slidingViewController anchorTopViewTo:ECRight];
}

- (IBAction)showRight:(id)sender {
    [self.slidingViewController anchorTopViewTo:ECLeft];
}
@end
