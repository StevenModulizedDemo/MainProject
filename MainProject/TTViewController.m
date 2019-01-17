//
//  ViewController.m
//  MainProject
//
//  Created by steven on 2019/1/16.
//  Copyright © 2019年 steven. All rights reserved.
//

#import "TTViewController.h"
#import <A_Category/CTMediator+A.h>

@interface TTViewController ()

@end

@implementation TTViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
}

- (IBAction)onClick:(id)sender {
    UIViewController *aViewController = [[CTMediator sharedInstance] A_aViewController];
    [self presentViewController:aViewController animated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
