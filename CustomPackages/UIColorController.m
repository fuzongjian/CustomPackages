//
//  UIColorController.m
//  CustomPackages
//
//  Created by 陈舒澳 on 16/4/20.
//  Copyright © 2016年 speeda. All rights reserved.
//

#import "UIColorController.h"

@interface UIColorController ()
@property (weak, nonatomic) IBOutlet UIImageView *testImageView;

@end

@implementation UIColorController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.testImageView.image = [UIColor color_imageWithColorValue:[UIColor redColor]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
