//
//  UIBarButtonItem+YTCategory.m
//  YTCustomTools
//
//  Created by Heaven on 16/8/25.
//  Copyright © 2016年 Heaven. All rights reserved.
//

#import "UIBarButtonItem+YTCategory.h"
#import "UIButton+YTCategory.h"

@implementation UIBarButtonItem (YTCategory)

+ (instancetype)barButtonWithTitle:(NSString *)title imageName:(NSString *)imageName target:(id)target action:(SEL)action {
    
    UIButton *button = [UIButton buttonWithTitle:title imageName:imageName target:target action:action];
    [button sizeToFit];
    return [[self alloc] initWithCustomView:button];
}

+ (instancetype)barButtonWithTitle:(NSString *)title titleFont:(UIFont *)titleFont titleColor:(UIColor *)titleColor imageName:(NSString *)imageName target:(id)target action:(SEL)action {
    
    UIButton *button = [UIButton buttonWithTitle:title imageName:imageName target:target action:action];
    button.titleLabel.font = titleFont;
    if (titleColor) {
        [button setTitleColor:titleColor forState:UIControlStateNormal];
    }
    [button sizeToFit];
    return [[self alloc] initWithCustomView:button];
}

@end
