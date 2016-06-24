//
//  ViewController.m
//  MoveTitleLabel
//
//  Created by 叶一帆 on 16/6/17.
//  Copyright © 2016年 叶一帆. All rights reserved.
//

#import "ViewController.h"
#import "MoveTitleLabel.h"

@interface ViewController ()

@property (nonatomic,strong) MoveTitleLabel *moveTitleLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.moveTitleLabel = [MoveTitleLabel creatWithText:@"我是移动的标题"];
    self.moveTitleLabel.frame = CGRectMake(50, 50, 0, 0);
    [self.view addSubview:self.moveTitleLabel];
    
    [self.moveTitleLabel show];
    
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(5.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [self.moveTitleLabel hide];
    });
    
    
}

@end
