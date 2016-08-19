//
//  BezierPathView.m
//  02UIBezierPath 简单使用
//
//  Created by qingyun on 16/8/11.
//  Copyright © 2016年 QingYun. All rights reserved.
//

#import "BezierPathView.h"

@implementation BezierPathView


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    //1.UIBezierPath 对象
    //corners 表示绘制圆角的位置/方向
    //cornerRadii 圆角的大小
    UIBezierPath *path=[UIBezierPath bezierPathWithRoundedRect:rect byRoundingCorners:UIRectCornerTopLeft|UIRectCornerBottomRight cornerRadii:CGSizeMake(30, 100)];
    //2.设置绘制属性
    [[UIColor yellowColor] setFill];
    //3.path填充指定颜色
    [path fill];
    //4.绘制曲线
    //在指定点的位置开始绘制
    [path moveToPoint:CGPointMake(30, 30)];
    [path addCurveToPoint:CGPointMake(220, 220) controlPoint1:CGPointMake(220,30) controlPoint2:CGPointMake(30, 220)];
    //曲线的颜色
    [[UIColor blueColor] setStroke];
    //路径渲染
    [path stroke];
    
}


@end
