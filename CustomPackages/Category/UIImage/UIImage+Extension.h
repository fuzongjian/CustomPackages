//
//  UIImage+Extension.h
//  CustomPackages
//
//  Created by 陈舒澳 on 16/4/20.
//  Copyright © 2016年 speeda. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (Extension)
#pragma mark --- 高效设置圆角
/** 高效设置圆角 */
- (UIImage *)image_drawRadius:(CGFloat)radius imageSize:(CGSize)size;
/** 图片不失真展示 */
- (UIImage *)image_modeAlwaysOriginal;
@end
