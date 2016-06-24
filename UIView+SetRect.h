//
//  UIView+SetRect.h
//  EasyWeather
//
//  Created by 叶一帆 on 16/6/13.
//  Copyright © 2016年 叶一帆. All rights reserved.
//

#import <UIKit/UIKit.h>

// 屏幕宽度
#define Width [UIScreen mainScreen].bounds.size.width
// 屏幕高度
#define Height [UIScreen mainScreen].bounds.size.height



@interface UIView (SetRect)


@property (nonatomic,assign) CGFloat x;
@property (nonatomic,assign) CGFloat y;
@property (nonatomic,assign) CGFloat width;
@property (nonatomic,assign) CGFloat height;


@end
