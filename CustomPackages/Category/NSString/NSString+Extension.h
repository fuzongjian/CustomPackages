//
//  NSString+Extension.h
//  CustomPackages
//
//  Created by 陈舒澳 on 16/4/20.
//  Copyright © 2016年 speeda. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (Extension)
/**过滤掉特殊的字符*/
- (NSString *)deleteSomeCharacters:(NSString *)deleteStr originalStr:(NSString *)original;
@end
