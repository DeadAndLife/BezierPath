//
//  ShapeView.m
//  01 绘制基本图形
//
//  Created by qingyun on 16/8/11.
//  Copyright © 2016年 QingYun. All rights reserved.
//

#import "ShapeView.h"

@implementation ShapeView


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    //[self drawRectAngle];
    [self drawTrangle];
}
//绘制矩形
-(void) drawRectAngle{
    //1.获取图形上下文
    CGContextRef ctx=UIGraphicsGetCurrentContext();
    //2.构建路径(直线,曲线 指定形状 用路径表示)
    CGContextAddRect(ctx, CGRectMake(10, 10, 100, 100));
    //设置边框颜色方式1
    [[UIColor redColor] setStroke];
    //设置颜色方式2
    CGContextSetRGBStrokeColor(ctx, 0, 1, 0, 1);
    CGContextSetLineWidth(ctx, 5);
    
    
    //设置填充颜色
    //填充颜色
    //方式1
    [[UIColor blueColor] setFill];
    //方式2
    CGContextSetRGBFillColor(ctx, 1, 0, 0,1);
    
    CGContextFillPath(ctx);
    CGContextStrokePath(ctx);
    //边框与填充样式
    CGContextDrawPath(ctx, kCGPathFillStroke);
}
//绘制三角形
-(void) drawTrangle{
    //1.获取图形上下文
    CGContextRef ctx=UIGraphicsGetCurrentContext();
    //2.构建三角形的path
    //2.1 绘制三角形1
    //一条线
    CGContextMoveToPoint(ctx, 100, 10);
    CGContextAddLineToPoint(ctx,150, 60);
    //第二条线
    CGContextAddLineToPoint(ctx, 50, 60);
    
    //第三条线
    CGContextAddLineToPoint(ctx, 50, 100);
    
    //3.关闭路径
    CGContextClosePath(ctx);
    //4.渲染 设置颜色 边框  和填充颜色等
//    [[UIColor yellowColor] setFill];
//    CGContextFillPath(ctx);
    [[UIColor redColor] setStroke];
    CGContextDrawPath(ctx, kCGPathStroke);

}
@end
