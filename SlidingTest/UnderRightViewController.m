//
//  UnderRightViewController.m
//  SlidingTest
//
//  Created by Scott Barron on 7/31/12.
//  Copyright (c) 2012 Scott Barron. All rights reserved.
//

#import "UnderRightViewController.h"

@implementation UnderRightViewController
@synthesize peekLeftAmount;

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.peekLeftAmount = 40.0f;
    [self.slidingViewController setAnchorLeftPeekAmount:self.peekLeftAmount];
    self.slidingViewController.underRightWidthLayout = ECVariableRevealWidth;
}

@end
