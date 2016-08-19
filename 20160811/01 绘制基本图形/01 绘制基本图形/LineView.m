//
//  LineView.m
//  01 绘制基本图形
//
//  Created by qingyun on 16/8/11.
//  Copyright © 2016年 QingYun. All rights reserved.
//

#import "LineView.h"

@implementation LineView


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    NSLog(@"drawRect");
    //实现绘制
    //1. 获取图形的上下文,(获取画板)
    CGContextRef ctx=UIGraphicsGetCurrentContext();
    //2.绘制直线
    //移动点到指定位置开始绘制
    CGContextMoveToPoint(ctx, 10, 10);
    CGContextAddLineToPoint(ctx, 100, 100);
    CGContextAddLineToPoint(ctx, 10, 180);
    //保存绘制状态  与   CGContextRestoreGState(ctx)配对使用;
    CGContextSaveGState(ctx);
    //设置直线的宽度
    CGContextSetLineWidth(ctx, 10);
    //设置颜色
    CGContextSetStrokeColorWithColor(ctx, [UIColor redColor].CGColor);
    //设置线条终点的样式
    CGContextSetLineCap(ctx, kCGLineCapRound);
    //设置连接线的样式
    CGContextSetLineJoin(ctx, kCGLineJoinRound);
    //设置线框的路径
    CGContextStrokePath(ctx);
    //更新画板 更新上下文
    CGContextRestoreGState(ctx);
    
    //3.绘制虚线
    //开始位置
    CGContextMoveToPoint(ctx, 50, 30);
    //设置虚线的宽度
    CGContextSetLineWidth(ctx, 5);
    /*
    CGContextSetLineDash(<#CGContextRef  _Nullable c#>, <#CGFloat phase#>, <#const CGFloat * _Nullable lengths#>, <#size_t count#>)
      c 画板
      phash  第一条虚线要跳过多少点
      length 绘制线的长度
       count 数组的长度
     CGFloat lengths[]={10,20,10} 表示 先绘制10个点,跳过20个点,绘制10个点,然后跳过10个点,绘制20个点,等等,如此反复
     */
    //CGFloat lengths[]={10,20};
    CGFloat lengths[]={10,20,10};
    CGContextSetLineDash(ctx, 0, lengths, 3);
    //绘制虚线的结束位置
    CGContextAddLineToPoint(ctx, 180, 180);
    
    //设置绘图模式,
    CGContextDrawPath(ctx, kCGPathStroke);
    
}


@end
