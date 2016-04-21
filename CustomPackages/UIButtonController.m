//
//  UIButtonController.m
//  CustomPackages
//
//  Created by 陈舒澳 on 16/4/20.
//  Copyright © 2016年 speeda. All rights reserved.
//

#import "UIButtonController.h"
@interface UIButtonController ()
@property (weak, nonatomic) IBOutlet UIButton *testButton;
@property (weak, nonatomic) IBOutlet UILabel *testLable;
@end
@implementation UIButtonController
- (void)viewDidLoad{
    //弱引用self 避免block中循环引用，影响内存的释放
    __weak __typeof(self) weakSelf = self;
    self.testButton.button_click = ^(UIButton * sender){
        weakSelf.testLable.text = [NSString stringWithFormat:@"%d---",arc4random()];
        [weakSelf buttonclick];
        [sender setTitle:@"fuzongjian" forState:UIControlStateNormal];
    };
}
- (void)buttonclick{
    NSLog(@"fuzongjian--%@",self.testLable.text);
    
}
#pragma mark --- 在这里主要是测试是否会引起block的循环引用
- (void)dealloc
{
     NSLog(@"控制器被dealloc:%@",[[self class] description]);
}
@end
