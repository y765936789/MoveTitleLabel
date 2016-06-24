//
//  MoveTitleLabel.h
//  MoveTitleLabel
//
//  Created by 叶一帆 on 16/6/17.
//  Copyright © 2016年 叶一帆. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface MoveTitleLabel : UIView

@property (nonatomic,strong) UIFont *font; //!< 字体
@property (nonatomic,strong) NSString *text; //!< 文本内容
@property (nonatomic,strong) UIColor *color; //!< 字体颜色

@property (nonatomic,assign) CGFloat moveGap; //!< 移动距离

-(void)buildView;
-(void)show;
-(void)hide;

// 初始化
+(MoveTitleLabel *)creatWithText:(NSString *)text;

@end
