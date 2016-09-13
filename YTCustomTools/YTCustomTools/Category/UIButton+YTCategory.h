//
//  UIButton+YTCategory.h
//  YTCustomTools
//
//  Created by Heaven on 16/8/25.
//  Copyright © 2016年 Heaven. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (YTCategory)
/// 使用图像名创建图像
///
/// @param title 按钮名称(可选)
/// @param imageName 图像名(可选)
/// @param target 监听对象
/// @param action 监听方法(可选)
///
/// @return UIButton
+ (instancetype)buttonWithTitle:(NSString *)title imageName:(NSString *)imageName target:(id)target action:(SEL)action;

/// 创建按钮
///
/// @param title         标题
/// @param color         字体颜色
/// @param fontSize      字号
/// @param imageName     图像
/// @param backImageName 背景图像
///
/// @return UIButton
+ (instancetype)buttonWithTitle:(NSString *)title color:(UIColor *)color fontSize:(CGFloat)fontSize imageName:(NSString *)imageName backImageName:(NSString *)backImageName;

/// 创建按钮
///
/// @param title         标题
/// @param titleColor    标题颜色
/// @param backImageName 背景图像名称
///
/// @return UIButton
+ (instancetype)buttonWithTitle:(NSString *)title titleColor:(UIColor *)titleColor backImageName:(NSString *)backImageName;

/**
 *  创建按钮
 *
 *  @param title         标题
 *  @param color         标题颜色
 *  @param fontSize      字体
 *  @param imageName     图像
 *  @param backImageName 背景图片
 *  @param target        监听对象
 *  @param action        监听方法
 *
 *  @return UIButton
 */
+ (instancetype)buttonWithTitle:(NSString *)title normalColor:(UIColor *)normalColor highlightedColor:(UIColor *)highlightedColor titleFont:(UIFont *)titleFont imageName:(NSString *)imageName backImageName:(NSString *)backImageName target:(id)target action:(SEL)action;


@end
