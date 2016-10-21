//
//  ViewController.m
//  NSNotifity
//
//  Created by zt on 16/9/12.
//  Copyright © 2016年 zt. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    NSNotificationCenter *center = [NSNotificationCenter defaultCenter];
//    [center addObserver:self selector:@selector(noti:) name:@"notity" object:nil];
    
//
    NSNotificationCenter *centers = [NSNotificationCenter defaultCenter];
    [centers addObserver:self selector:@selector(oneNotis:) name:@"threeNoti" object:nil];
}

-(void)noti:(NSNotification *)noti{
    NSLog(@"notiOne %@",noti.userInfo);
}

-(void)oneNotis:(NSNotification *)notify{
    NSLog(@"%@",notify.userInfo);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
