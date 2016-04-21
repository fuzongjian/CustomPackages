//
//  UIView_Controller.m
//  CustomPackages
//
//  Created by 陈舒澳 on 16/4/20.
//  Copyright © 2016年 speeda. All rights reserved.
//

#import "UIView_Controller.h"

@interface UIView_Controller ()

@property (weak, nonatomic) IBOutlet UIView *textView;
@end

@implementation UIView_Controller

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
//    self.textView.x = 50;
//    self.textView.y = 100;
//    self.textView.middleY = 300;
   
     NSLog(@"%@---%@",NSStringFromCGPoint(self.textView.topLeft),NSStringFromCGPoint(self.textView.bottomLeft));
     NSLog(@"%@",NSStringFromCGSize(self.textView.size));
    
//    self.textView.backgroundColor = [UIColor color_random];
    
//    {200, 200}---{200, 400}
//    {50, 200}---{50, 400}
//     {50, 100}---{50, 300}
    [self.textView view_drawRadius:10];
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
