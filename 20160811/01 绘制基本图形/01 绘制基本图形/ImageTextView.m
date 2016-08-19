//
//  ImageTextView.m
//  01 绘制基本图形
//
//  Created by qingyun on 16/8/11.
//  Copyright © 2016年 QingYun. All rights reserved.
//

#import "ImageTextView.h"

@implementation ImageTextView


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    //1.绘制文本
    NSString *str=@"iOS编程";
    //设置字体颜色
    NSDictionary *pars=@{NSForegroundColorAttributeName:[UIColor redColor],NSStrikethroughStyleAttributeName:@1};
    [str drawInRect:CGRectMake(50, 10, 160, 30) withAttributes:pars];
    //2.加载图片
    UIImage *img=[UIImage imageNamed:@"pic.jpg"];
    //在指定区域内绘制图片
    //在指定区域内绘制
   // [img drawInRect:CGRectMake(100, 100, 100, 100)];
    //在指定点位置绘制
    [img drawAtPoint:CGPointMake(100, 100)];
    
    
}


@end
