//
//  ViewController.m
//  导航栏渐变效果
//
//  Created by 陈进荣 on 16/4/4.
//  Copyright © 2016年 chen. All rights reserved.
//

#import "ViewController.h"
#import "UINavigationBar+category.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor redColor];
}


-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

//只有继承UIScrollView的控件才能调用此方法
-(void)scrollViewDidScroll:(UIScrollView *)scrollView{
    
    
    //1。拿到y值
   CGFloat contentOffY = scrollView.contentOffset.y;
   
    UIColor *color = [UIColor whiteColor];
    
    CGFloat alpah = (20 + 64 - contentOffY) / 64;
     NSLog(@"%f  %f",contentOffY,alpah);
    [self.navigationController.navigationBar alphaNavigationBarView:[color colorWithAlphaComponent:alpah]];
//    if (contentOffY > 20) {
//        [self.navigationController.navigationBar alphaNavigationBarView:[color colorWithAlphaComponent:alpah]];
//    }else{
//        [self.navigationController.navigationBar alphaNavigationBarView:[color colorWithAlphaComponent:1]];
//    }
    
    
}
@end
