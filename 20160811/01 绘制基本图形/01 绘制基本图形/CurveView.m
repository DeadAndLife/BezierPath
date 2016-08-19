//
//  CurveView.m
//  01 绘制基本图形
//
//  Created by qingyun on 16/8/11.
//  Copyright © 2016年 QingYun. All rights reserved.
//

#import "CurveView.h"

@implementation CurveView


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
//贝塞尔曲线
- (void)drawRect:(CGRect)rect {
    // Drawing code
    [self drawBezierPath];
    [self drawOhterCureve];
}
-(void) drawBezierPath{
    //1.获取图形上下文
    CGContextRef ctx=UIGraphicsGetCurrentContext();
    //2.构建path
    CGContextMoveToPoint(ctx, 30, 30);
    //设置贝塞尔曲线的控制点坐标和终点坐标(结束点坐标),以及控制点
    //二次贝塞尔曲线
    CGContextAddQuadCurveToPoint(ctx, 50, 200, 180, 20);
    //3.渲染
    //设置曲线的颜色
    [[UIColor purpleColor] setStroke];
    //刷新上下文的路径
    CGContextStrokePath(ctx);
}
-(void) drawOhterCureve{
    //1.获取图形的上下文
    CGContextRef ctx=UIGraphicsGetCurrentContext();
    //2.构建path
    CGContextMoveToPoint(ctx, 30, 30);
    //设置贝塞尔曲线的控制点坐标和终点坐标
    //三次贝塞尔曲线
    CGContextAddCurveToPoint(ctx, 180, 30, 50, 170, 180, 180);
    //3.渲染
    [[UIColor yellowColor] setStroke];
    //4.填充
    [[UIColor blueColor] setFill];
    CGContextFillPath(ctx);
    
    //设置绘制模式
    CGContextDrawPath(ctx, kCGPathFillStroke);
}

@end
