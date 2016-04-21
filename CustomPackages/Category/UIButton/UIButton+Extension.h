//
//  UIButton+Extension.h
//  CustomPackages
//
//  Created by 陈舒澳 on 16/4/20.
//  Copyright © 2016年 speeda. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <objc/runtime.h>
@interface UIButton (Extension)
@property (nonatomic, copy) void(^button_click)(UIButton * sender);
/** 设置边框宽度、颜色*/
- (void)button_BorderWidth:(CGFloat)width BorderColor:(UIColor *)color;
/** 设置边框宽度、RGB颜色*/
- (void)button_BorderWidth:(CGFloat)width BorderColorR:(CGFloat)r G:(CGFloat)g B:(CGFloat)b;
@end
