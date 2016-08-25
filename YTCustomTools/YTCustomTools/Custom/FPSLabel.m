//
//  FPSLabel.m
//  YTCustomTools
//
//  Created by Heaven on 16/8/24.
//  Copyright © 2016年 Heaven. All rights reserved.
//

#import "FPSLabel.h"

#define kMinSize CGSizeMake(60, 30)

@interface FPSLabel ()

/* 刷新定时器 */
@property (nonatomic, strong) CADisplayLink *displayLink;

/* 次数 */
@property (nonatomic, assign) NSUInteger count;

/* 上次时间 */
@property (nonatomic, assign) NSTimeInterval lastTime;

@end

@implementation FPSLabel

- (instancetype)initWithFrame:(CGRect)frame {

    // 如果传入frame大小为0 设置最小的CGSize
    if (frame.size.width == 0 && frame.size.height == 0) {
        frame.size = kMinSize;
    }
    
    self = [super initWithFrame:frame];
    if (self) {
        self.userInteractionEnabled = NO;
        self.layer.cornerRadius = 5;
        self.clipsToBounds = YES;
        self.textAlignment = NSTextAlignmentCenter;
        self.backgroundColor = [UIColor colorWithWhite:0.000 alpha:0.700];
        
        [self startDisplaylink];
    }
    return self;
}

/**
 *  开启定时器
 */
- (void)startDisplaylink {

    CADisplayLink *displayLink = [CADisplayLink displayLinkWithTarget:self selector:@selector(displayLinkOperation:)];

    [displayLink addToRunLoop:[NSRunLoop mainRunLoop] forMode:NSRunLoopCommonModes];
    
    self.displayLink = displayLink;
}

- (void)displayLinkOperation:(CADisplayLink *)link {

    if (_lastTime == 0) {
        _lastTime = link.timestamp;
        return;
    }
    
    _count++;
    NSTimeInterval delta = link.timestamp - _lastTime;
    if (delta < 1) return;
    _lastTime = link.timestamp;
    float fps = _count / delta;
    _count = 0;
    
    CGFloat progress = fps / 60.0;
    UIColor *color = [UIColor colorWithHue:0.27 * (progress - 0.2) saturation:1 brightness:0.9 alpha:1];
    
    // 创建可变属性文本
    NSMutableAttributedString *attributedStr = [[NSMutableAttributedString alloc] initWithString:[NSString stringWithFormat:@"%d FPS",(int)round(fps)]];
    
    // 添加属性
    // 字体
    [attributedStr addAttribute:NSFontAttributeName value:[UIFont fontWithName:@"Courier" size:14] range:NSMakeRange(0, attributedStr.length)];
    
    // 颜色
    [attributedStr addAttribute:NSForegroundColorAttributeName value:color range:NSMakeRange(0, attributedStr.length - 3)];
    [attributedStr addAttribute:NSForegroundColorAttributeName value:[UIColor whiteColor] range:NSMakeRange(attributedStr.length -3, 3)];
    
    self.attributedText = attributedStr;
}

@end
