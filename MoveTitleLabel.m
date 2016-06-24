//
//  MoveTitleLabel.m
//  MoveTitleLabel
//
//  Created by 叶一帆 on 16/6/17.
//  Copyright © 2016年 叶一帆. All rights reserved.
//

#import "MoveTitleLabel.h"
#import "CGRectStoreValue.h"
#import "UIView+SetRect.h"

@interface MoveTitleLabel ()

@property (nonatomic,strong) UILabel *label;
@property (nonatomic,strong) CGRectStoreValue *labelStoreValue; //!< label的frame值存储

@end

@implementation MoveTitleLabel

-(void)buildView {
    self.backgroundColor = [UIColor clearColor]; // 清除背景色
    self.labelStoreValue = [CGRectStoreValue new];
    
    // 添加label
    self.label = [[UILabel alloc] initWithFrame:CGRectZero];
    self.label.textAlignment = NSTextAlignmentLeft;
    self.label.backgroundColor = [UIColor clearColor];
    self.label.text = self.text;
    [self addSubview:self.label];
    
    // 设置文本要颜色
    if (self.color) {
        self.label.textColor = self.color;
    }
    if (self.font) {
        self.label.font = self.font;
    }
    
    // label自适应
    [self.label sizeToFit];
    
    // 重设当前view的frame值
    self.width = self.label.width;
    self.height = self.label.height;
    
    // 存储frame的值
    // 1.开始
    self.label.x -= self.moveGap;
    self.labelStoreValue.startRect = self.label.frame;
    // 2.中间
    self.label.x += self.moveGap;
    self.labelStoreValue.midRect = self.label.frame;
    // 3.结束
    self.label.x += self.moveGap;
    self.labelStoreValue.endRect = self.label.frame;
    
    // 复位frame值并隐藏（透明）；
    self.label.frame = self.labelStoreValue.startRect;
    self.label.alpha = 0.f;
    
}

-(void)show {
    [UIView animateWithDuration:1.75f animations:^{
        self.label.frame = self.labelStoreValue.midRect;
        self.label.alpha =1.f;
    }];
}

-(void)hide {
    [UIView animateWithDuration:0.75f animations:^{
        self.label.frame = self.labelStoreValue.endRect;
        self.label.alpha = 0.f;
    } completion:^(BOOL finished) {
        self.label.frame = self.labelStoreValue.startRect;
    }];
}

+(MoveTitleLabel *)creatWithText:(NSString *)text {
    MoveTitleLabel *moveTitle = [MoveTitleLabel new];
    moveTitle.text = text;
    moveTitle.color = [UIColor blackColor];
    moveTitle.font = [UIFont systemFontOfSize:18];
    moveTitle.moveGap = 20.f;
    [moveTitle buildView];
    return moveTitle;
}

@end


