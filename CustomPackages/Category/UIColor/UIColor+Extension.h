//
//  UIColor+Extension.h
//  CustomPackages
//
//  Created by 陈舒澳 on 16/4/20.
//  Copyright © 2016年 speeda. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (Extension)
/** 颜色转图片 */
+ (UIImage *)color_imageWithColorValue:(UIColor *)color;
/** RGB颜色转图片 */
+ (UIImage *)color_imageWithRGBColorValueR:(CGFloat)r G:(CGFloat)g B:(CGFloat)b;
/** 随机颜色 */
+ (UIColor *)color_random;
@end
