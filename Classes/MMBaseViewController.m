//
//  MMBaseViewController.m
//  ModularizationBaseLib
//
//  Created by Loren on 2018/4/20.
//  Copyright © 2018年 Loren. All rights reserved.
//

#import "MMBaseViewController.h"

@interface MMBaseViewController ()

@end

@implementation MMBaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)setNavigationBarTintColor:(UIColor *)tintColor{
    self.navigationController.navigationBar.tintColor = tintColor;
}
- (void)setTitle:(NSString *)title leftTitle:(NSString *)leftTitle rightTitle:(NSString *)rightTitle{
    [self setTitle:@"Title"];
    [self setLeftTitle:@"leftAction"];
    [self setRightTitle:@"rightAction"];
}
- (void)setRightTitle:(NSString *)title{
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:title style:UIBarButtonItemStyleDone target:self action:@selector(rightClickWithSender:)];
}

- (void)setLeftTitle:(NSString *)title{
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:title style:UIBarButtonItemStyleDone target:self action:@selector(backClickWithSender:)];
}

- (void)setRightTitle:(NSString*)title color:(UIColor *)color{
    [self setRightTitle:title color:color action:@selector(rightClickWithSender:)];
}

- (void)setRightTitle:(NSString*)title color:(UIColor *)color action:(SEL)action{
    UIButton * button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button sizeToFit];
    [button addTarget:self action:action forControlEvents:UIControlEventTouchUpInside];
    [button setTitle:title forState:UIControlStateNormal];
    [button setTitleColor:color forState:UIControlStateNormal];
    
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:button];
}

- (void)setLeftTitle:(NSString*)title color:(UIColor *)color{
    [self setLeftTitle:title color:color action:@selector(backClickWithSender:)];
}

- (void)setLeftTitle:(NSString*)title color:(UIColor *)color action:(SEL)action{
    
    UIButton * button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button sizeToFit];
    [button addTarget:self action:action forControlEvents:UIControlEventTouchUpInside];
    [button setTitle:title forState:UIControlStateNormal];
    [button setTitleColor:color forState:UIControlStateNormal];
    
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:button];
}

- (void)backClickWithSender:(id)sender{
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)rightClickWithSender:(id)sender{
    
}


@end
