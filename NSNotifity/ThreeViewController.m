//
//  ThreeViewController.m
//  NSNotifity
//
//  Created by zt on 16/9/12.
//  Copyright © 2016年 zt. All rights reserved.
//

#import "ThreeViewController.h"

@interface ThreeViewController ()

@end

@implementation ThreeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSNotificationCenter *center = [NSNotificationCenter defaultCenter];
    [center addObserver:self selector:@selector(threeNoti:) name:@"notity" object:nil];
    
//    NSNotificationCenter *centers = [NSNotificationCenter defaultCenter];
//    [centers addObserver:self selector:@selector(threeNotis:) name:@"threeNoti" object:nil];
    // Do any additional setup after loading the view.
}
- (IBAction)sendNotiBtn:(id)sender {
    NSNotification *noti = [NSNotification notificationWithName:@"threeNoti" object:nil userInfo:nil];
    [[NSNotificationCenter defaultCenter]postNotification:noti];
}

-(void)threeNoti:(NSNotification *)notify{
    NSLog(@"%@",notify.userInfo);
}

-(void)threeNotis:(NSNotification *)notify{
    NSLog(@"%@",notify.userInfo);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)threeBtn:(id)sender {
    [self dismissViewControllerAnimated:YES completion:^{
       
        
    }];
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
