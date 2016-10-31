//
//  UZBubbleView.m
//  UZ-iOS
//
//  Created by 小飞鸟 on 16/4/26.
//  Copyright © 2016年 uzteam. All rights reserved.
//

#import "UZBubbleView.h"

@implementation UZBubbleView

-(instancetype)initWithFrame:(CGRect)frame{

    if (self=[super initWithFrame:frame]) {
    
        
        self.backgroundColor=[UIColor clearColor];
    }
    
    return self;
}

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    CGFloat width = rect.size.width-12;
    CGFloat height = rect.size.height;
    // 简便起见，这里把圆角半径设置为长和宽平均值的1/10
    CGFloat radius = (width + height) * 0.05;
    
    // 获取CGContext，注意UIKit里用的是一个专门的函数
    CGContextRef context = UIGraphicsGetCurrentContext();
    // 移动到初始点
    CGContextMoveToPoint(context, radius, 0);
    
    // 绘制第1条线和第1个1/4圆弧
    CGContextAddLineToPoint(context, width - radius, 0);
    CGContextAddArc(context, width - radius, radius, radius, -0.5 * M_PI, 0.0, 0);
    
    CGContextAddLineToPoint(context, width, height*0.5-5);
    
    CGContextAddLineToPoint(context, width+15, height*0.5+5);

    CGContextAddLineToPoint(context, width, height*0.5+10);

    
    // 绘制第2条线和第2个1/4圆弧
    CGContextAddLineToPoint(context, width, height - radius);
    CGContextAddArc(context, width - radius, height - radius, radius, 0.0, 0.5 * M_PI, 0);
    

    
    // 绘制第3条线和第3个1/4圆弧
    CGContextAddLineToPoint(context, radius, height);
    CGContextAddArc(context, radius, height - radius, radius, 0.5 * M_PI, M_PI, 0);
    
    // 绘制第4条线和第4个1/4圆弧
    CGContextAddLineToPoint(context, 0, radius);
    CGContextAddArc(context, radius, radius, radius, M_PI, 1.5 * M_PI, 0);
    
    // 闭合路
    CGContextClosePath(context);
    // 填充半透明黑色
    CGContextSetRGBFillColor(context, 18/255.0,115/255.0, 170/255.0, 0.5);
    CGContextDrawPath(context, kCGPathFill);
}



@end
