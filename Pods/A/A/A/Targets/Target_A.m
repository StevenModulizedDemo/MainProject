//
//  Target_A.m
//  A
//
//  Created by steven on 2019/1/16.
//  Copyright © 2019年 steven. All rights reserved.
//

#import "Target_A.h"
#import "TestViewController.h"

@implementation Target_A

- (UIViewController *)Action_viewController:(NSDictionary *)params
{
    TestViewController *aViewController = [[TestViewController alloc] init];
    return aViewController;
}

@end
