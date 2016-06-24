//
//  UIView+SetRect.m
//  EasyWeather
//
//  Created by 叶一帆 on 16/6/13.
//  Copyright © 2016年 叶一帆. All rights reserved.
//

#import "UIView+SetRect.h"

@implementation UIView (SetRect)

-(CGFloat)x {
    return self.frame.origin.x;
}
-(void)setX:(CGFloat)x {
    CGRect newFrame = self.frame;
    newFrame.origin.x = x;
    self.frame = newFrame;
}

-(CGFloat)y {
    return self.frame.origin.y;
}
-(void)setY:(CGFloat)y {
    CGRect newFrame = self.frame;
    newFrame.origin.y = y;
    self.frame = newFrame;
}

-(CGFloat)width {
    return CGRectGetWidth(self.bounds);
}
-(void)setWidth:(CGFloat)width {
    CGRect newFrame = self.frame;
    newFrame.size.width = width;
    self.frame = newFrame;
}

-(CGFloat)height {
    return CGRectGetHeight(self.bounds);
}
-(void)setHeight:(CGFloat)height {
    CGRect newFrame = self.frame;
    newFrame.size.height = height;
    self.frame = newFrame;
}


@end
