//
//  TestViewController.m
//  A
//
//  Created by steven on 2019/1/16.
//  Copyright © 2019年 steven. All rights reserved.
//

#import "TestViewController.h"

@interface TestViewController ()

@property(nonatomic, strong) UILabel *mLabel;
@property(nonatomic, strong) UIButton *mButton;

@end

@implementation TestViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NSLog(@"A load");
    
    [self initView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (void)viewDidLayoutSubviews {
    [super viewDidLayoutSubviews];
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
    NSLog(@"frame %@", NSStringFromCGRect(self.view.frame));
    NSLog(@"label %@", NSStringFromCGRect(self.mLabel.frame));
    NSLog(@"button %@", NSStringFromCGRect(self.mButton.frame));
}

- (void)initView {
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIView *aView = [[UIView alloc] initWithFrame:[UIScreen mainScreen].bounds];
    aView.backgroundColor = [UIColor whiteColor];
    aView.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:aView];
    
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:aView attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeTop multiplier:1 constant:0]];
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:aView attribute:NSLayoutAttributeBottom relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeBottom multiplier:1 constant:0]];
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:aView attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeLeft multiplier:1 constant:0]];
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:aView attribute:NSLayoutAttributeRight relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeRight multiplier:1 constant:0]];
    
    UILabel *label = [[UILabel alloc] init];
    label.text = @"Hello World!";
    label.font = [UIFont systemFontOfSize:15.0];
    label.textColor = [UIColor blueColor];
    label.translatesAutoresizingMaskIntoConstraints = NO;
    [aView addSubview:label];
    
    NSLayoutConstraint *cst11 = [NSLayoutConstraint constraintWithItem:label attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:aView attribute:NSLayoutAttributeCenterX multiplier:1.0 constant:0];
    NSLayoutConstraint *cst12 = [NSLayoutConstraint constraintWithItem:label attribute:NSLayoutAttributeCenterY relatedBy:NSLayoutRelationEqual toItem:aView attribute:NSLayoutAttributeCenterY multiplier:1.0 constant:0];
    NSLayoutConstraint *cst13 = [NSLayoutConstraint constraintWithItem:label attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeHeight multiplier:1.0 constant:30];
    [aView addConstraint:cst11];
    [aView addConstraint:cst12];
    [aView addConstraint:cst13];
    
    UIButton *button = [[UIButton alloc] init];
    [button setTitle:@"点我" forState:UIControlStateNormal];
    [button setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    button.translatesAutoresizingMaskIntoConstraints = NO;
    [aView addSubview:button];
    [button addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
    
    NSLayoutConstraint *cst21 = [NSLayoutConstraint constraintWithItem:button attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:aView attribute:NSLayoutAttributeCenterX multiplier:1.0 constant:0];
    NSLayoutConstraint *cst22 = [NSLayoutConstraint constraintWithItem:button attribute:NSLayoutAttributeCenterY relatedBy:NSLayoutRelationEqual toItem:aView attribute:NSLayoutAttributeCenterY multiplier:1.0 constant:50];
    NSLayoutConstraint *cst23 = [NSLayoutConstraint constraintWithItem:button attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeHeight multiplier:1.0 constant:30];
    [aView addConstraint:cst21];
    [aView addConstraint:cst22];
    [aView addConstraint:cst23];
    
    self.mLabel = label;
    self.mButton = button;
}

- (void)onClick:(id)sender {
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"哈哈" message:@"欢迎光临" delegate:self cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
    [alert show];
}

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex {
    [self dismissViewControllerAnimated:YES completion:^{
        NSLog(@"A dismiss");
    }];
}

@end
