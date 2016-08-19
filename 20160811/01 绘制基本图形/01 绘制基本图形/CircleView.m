//
//  CircleView.m
//  01 绘制基本图形
//
//  Created by qingyun on 16/8/11.
//  Copyright © 2016年 QingYun. All rights reserved.
//

#import "CircleView.h"

@implementation CircleView


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
   // [self drawCircle];
    [self drawOtherArc];
}
//绘制圆形
-(void) drawCircle{
    //1.获取当前上下文
    CGContextRef ctx=UIGraphicsGetCurrentContext();
    //2.构建路径设置(在画板中设置要显示的属性)
   /*
    CGContextAddArc(<#CGContextRef  _Nullable c#>, <#CGFloat x#>, <#CGFloat y#>, <#CGFloat radius#>, <#CGFloat startAngle#>, <#CGFloat endAngle#>, <#int clockwise#>)
    绘制圆形/弧形
    x,y 圆心
    radius 半径
    startAngle 开始角度
    endAngle 结束角度
    clockwise 绘制的方向:1逆时针 0 顺时针
    */
    //CGContextAddArc(ctx, 100, 100, 50, 0, M_PI, 1);
    CGContextAddArc(ctx, 100, 100, 50, 0, M_PI_2, 0);
    //3.渲染
    //填充颜色
//    [[UIColor yellowColor] setFill];
//    //路径填充更新
//    CGContextFillPath(ctx);
    //4.描边
    [[UIColor blueColor] setStroke];
    CGContextStrokePath(ctx);
}
-(void) drawOtherArc{
    //1.获取当前的上下文
    CGContextRef ctx=UIGraphicsGetCurrentContext();
    //2.构建路径设置
    CGContextMoveToPoint(ctx,150, 100);
    CGContextAddArcToPoint(ctx, 150, 50, 100, 50, 50);
    //3.渲染
    CGContextStrokePath(ctx);
}
@end
