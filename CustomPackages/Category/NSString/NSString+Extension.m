//
//  NSString+Extension.m
//  CustomPackages
//
//  Created by 陈舒澳 on 16/4/20.
//  Copyright © 2016年 speeda. All rights reserved.
//

#import "NSString+Extension.h"

@implementation NSString (Extension)
- (NSString *)deleteSomeCharacters:(NSString *)deleteStr originalStr:(NSString *)original{
    NSCharacterSet * set = [NSCharacterSet characterSetWithCharactersInString:deleteStr];
    return [original stringByTrimmingCharactersInSet:set];
}

@end
