//
//  CTMediator+A.m
//  A_Category
//
//  Created by steven on 2019/1/15.
//  Copyright © 2019年 steven. All rights reserved.
//

#import "CTMediator+A.h"

@implementation CTMediator (A)

- (UIViewController *) A_aViewController
{
    return [self performTarget:@"A" action:@"viewController" params:nil shouldCacheTarget:NO];
}

@end
