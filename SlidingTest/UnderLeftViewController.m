//
//  UnderLeftViewController.m
//  SlidingTest
//
//  Created by Scott Barron on 7/31/12.
//  Copyright (c) 2012 Scott Barron. All rights reserved.
//

#import "UnderLeftViewController.h"

@implementation UnderLeftViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self.slidingViewController setAnchorRightRevealAmount:280.0f];
    self.slidingViewController.underLeftWidthLayout = ECFullWidth;
}

@end
