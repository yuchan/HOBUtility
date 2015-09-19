//
//  HOBViewController.m
//  HOBUtility
//
//  Created by yuchan on 02/19/2015.
//  Copyright (c) 2014 yuchan. All rights reserved.
//

#import "HOBViewController.h"
#import "HOBCache.h"

@interface HOBViewController ()

@end

@implementation HOBViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [[HOBCache sharedCache] setCache:@"init" forKey:@"view"];
}

- (void)viewDidAppear:(BOOL)animated
{
    NSLog(@"%@", [[HOBCache sharedCache] cacheForKey:@"view"]);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
