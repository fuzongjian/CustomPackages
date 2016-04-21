//
//  UIImage+Extension.m
//  CustomPackages
//
//  Created by 陈舒澳 on 16/4/20.
//  Copyright © 2016年 speeda. All rights reserved.
//

#import "UIImage+Extension.h"

@implementation UIImage (Extension)
- (UIImage *)image_drawRadius:(CGFloat)radius imageSize:(CGSize)size{
    // 1、图形的大小
    CGRect rect = CGRectMake(0, 0, size.width, size.height);
    // 2、按照尺寸绘制图像
    UIGraphicsBeginImageContextWithOptions(rect.size, false, [UIScreen mainScreen].scale);
    // 3、添加裁剪路径（贝塞尔曲线）
    CGContextAddPath(UIGraphicsGetCurrentContext(), [UIBezierPath bezierPathWithRoundedRect:rect byRoundingCorners:UIRectCornerAllCorners cornerRadii:CGSizeMake(radius, radius)].CGPath);
    // 4、裁剪内容
    CGContextClip(UIGraphicsGetCurrentContext());
    // 5、调用drawInRect
    [self drawInRect:rect];
    CGContextDrawPath(UIGraphicsGetCurrentContext(), kCGPathFillStroke);
    UIImage * outPut = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return outPut;
}
- (UIImage *)image_modeAlwaysOriginal{
    return [self imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
}
@end
