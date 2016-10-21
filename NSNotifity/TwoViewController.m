//
//  TwoViewController.m
//  NSNotifity
//
//  Created by zt on 16/9/12.
//  Copyright © 2016年 zt. All rights reserved.
//

#import "TwoViewController.h"

@interface TwoViewController ()

@end

@implementation TwoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton *btn = [[UIButton alloc]initWithFrame:CGRectMake(50, 100, 100, 40)];
    [btn setTitle:@"......" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(click) forControlEvents:UIControlEventTouchUpInside];
    [btn setBackgroundColor:[UIColor orangeColor]];
    [self.view addSubview:btn];
    
    NSNotificationCenter *centers = [NSNotificationCenter defaultCenter];
    [centers addObserver:self selector:@selector(twoNotis:) name:@"threeNoti" object:nil];
    

    
}

-(void)click{
//    NSDictionary *dic = @{@"one":@"1"};
//   NSNotification *noti = [NSNotification notificationWithName:@"notity" object:nil userInfo:dic];
//    [[NSNotificationCenter defaultCenter]postNotification:noti];
//    noti = [NSNotification notificationWithName:@"threeNoti" object:nil userInfo:dic];
//    [[NSNotificationCenter defaultCenter]postNotification:noti];
 
    
    [self dismissViewControllerAnimated:YES completion:nil];
}

-(void)twoNotis:(NSNotification *)notify{
    NSLog(@"%@",notify.userInfo);
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
