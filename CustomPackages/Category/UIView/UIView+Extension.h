//
//  UIView+Extension.h
//  CustomPackages
//
//  Created by 陈舒澳 on 16/4/20.
//  Copyright © 2016年 speeda. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (Extension)
#pragma mark --- property
/** frame.origin.x */
@property(nonatomic,readwrite) CGFloat x;
/** frame.origin.y */
@property(nonatomic,readwrite) CGFloat y;
/** frame.size.height */
@property(nonatomic,readwrite) CGFloat height;
/** frame.size.width */
@property(nonatomic,readwrite) CGFloat width;
/** (frame.size.width + frame.origin.x) / 2 */
@property(nonatomic,readwrite) CGFloat middleX;
/** (frame.origin.y + frame.size.height) / 2 */
@property(nonatomic,readwrite) CGFloat middleY;
/** (frame.size.width,frame.size.height) */
@property(nonatomic,readwrite) CGSize size;

/** (frame.origin.x,frame.origin.y) */
@property(nonatomic,readonly) CGPoint topLeft;
/** (frame.origin.x + frame.size.width,frame.origin.y) */
@property(nonatomic,readonly) CGPoint topRight;
/** (frame.origin.x,frame.origin.y + frame.size.height) */
@property(nonatomic,readonly) CGPoint bottomLeft;
/** (frame.origin.x + frame.size.width,frame.origin.y + frame.size.height) */
@property(nonatomic,readonly) CGPoint bottomRight;
#pragma mark --- method
/** 切圆角 */
- (void)view_drawRadius:(CGFloat)radius;
@end
