//
//  UIColor+YTCategory.h
//  YTCustomTools
//
//  Created by Heaven on 16/8/25.
//  Copyright © 2016年 Heaven. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (YTCategory)

/**
 *  16进制色值
 *
 *  @param color 十六进制字符串 支持@“#123456”、 @“0X123456”、 @“123456”三种格式
 *
 *  @return UIColor
 */
+ (UIColor *)colorWithHexString:(NSString *)color;

/**
 *  16进制色值
 *
 *  @param color 十六进制字符串 支持@“#123456”、 @“0X123456”、 @“123456”三种格式
 *  @param alpha 透明度
 *
 *  @return UIColor
 */
+ (UIColor *)colorWithHexString:(NSString *)color alpha:(CGFloat)alpha;

/**
 *  随机色
 *
 *  @return UIColor
 */
+ (UIColor *)randomColor;

@end
