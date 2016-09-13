//
//  UIBarButtonItem+YTCategory.h
//  YTCustomTools
//
//  Created by Heaven on 16/8/25.
//  Copyright © 2016年 Heaven. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (YTCategory)

/// 使用图像名称创建自定义视图的 UIBarButtonItem
///
/// @param title 按钮名称(可选)
/// @param imageName 图像名(可选)
/// @param target 监听对象
/// @param action 监听方法(可选)
///
/// @return UIBarButtonItem
+ (instancetype)barButtonWithTitle:(NSString *)title imageName:(NSString *)imageName target:(id)target action:(SEL)action;
+ (instancetype)barButtonWithTitle:(NSString *)title titleFont:(UIFont *)titleFont titleColor:(UIColor *)titleColor imageName:(NSString *)imageName target:(id)target action:(SEL)action;

@end
