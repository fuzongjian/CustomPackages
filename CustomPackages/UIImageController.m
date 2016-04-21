//
//  UIImageController.m
//  CustomPackages
//
//  Created by 陈舒澳 on 16/4/20.
//  Copyright © 2016年 speeda. All rights reserved.
//

#import "UIImageController.h"

@interface UIImageController ()
@property (weak, nonatomic) IBOutlet UIImageView *testImageView;

@end

@implementation UIImageController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.testImageView.image = [self.testImageView.image image_drawRadius:10 imageSize:self.testImageView.frame.size];
    
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
