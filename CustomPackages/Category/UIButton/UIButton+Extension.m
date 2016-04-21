//
//  UIButton+Extension.m
//  CustomPackages
//
//  Created by 陈舒澳 on 16/4/20.
//  Copyright © 2016年 speeda. All rights reserved.
//

#import "UIButton+Extension.h"
static const void * button_click_block = @"button_click_block";
@implementation UIButton (Extension)
- (void)setButton_click:(void (^)(UIButton *))button_click{
    objc_setAssociatedObject(self, button_click_block, button_click, OBJC_ASSOCIATION_COPY);
    if (button_click) {
        [self addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchUpInside];
    }
}
- (void (^)(UIButton *))button_click{
    return objc_getAssociatedObject(self, button_click_block);
}
- (void)buttonClick:(UIButton *)sender{
    if (self.button_click) {
        self.button_click(sender);
    }
}
- (void)button_BorderWidth:(CGFloat)width BorderColor:(UIColor *)color{
    [self.layer setBorderColor:color.CGColor];
    [self.layer setBorderWidth:width];
}
- (void)button_BorderWidth:(CGFloat)width BorderColorR:(CGFloat)r G:(CGFloat)g B:(CGFloat)b{
    [self button_BorderWidth:width BorderColor:[UIColor colorWithRed:r green:g blue:b alpha:1]];
}
@end
