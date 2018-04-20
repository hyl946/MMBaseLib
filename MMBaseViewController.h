//
//  MMBaseViewController.h
//  ModularizationBaseLib
//
//  Created by Loren on 2018/4/20.
//  Copyright © 2018年 Loren. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MMBaseViewController : UIViewController

- (void)setNavigationBarTintColor:(UIColor *)tintColor;
- (void)setTitle:(NSString *)title leftTitle:(NSString *)leftTitle rightTitle:(NSString *)rightTitle;
//system
- (void)setRightTitle:(NSString *)title;

- (void)setLeftTitle:(NSString *)title;

//custom
- (void)setRightTitle:(NSString*)title color:(UIColor *)color;

- (void)setLeftTitle:(NSString*)title color:(UIColor *)color;

//action
- (void)backClickWithSender:(id)sender;

- (void)rightClickWithSender:(id)sender;

@end
