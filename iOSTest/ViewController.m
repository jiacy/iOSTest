//
//  ViewController.m
//  iOSTest
//
//  Created by jiacy on 2018/11/18.
//  Copyright © 2018年 chneyuttest. All rights reserved.
//

#import "ViewController.h"
NSString *const TEST_NOTIFICATION = @"FirstTest";

@interface ViewController ()


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(handleNotification:) name:nil object:nil];
    
//    [[NSNotificationCenter defaultCenter] postNotificationName:TEST_NOTIFICATION object:@"hahapost"];
}

- (void)handleNotification:(NSNotification *)notification
{
    NSLog(@"notification = %@", notification.name);
}


-(void)dealloc{
    NSLog(@"观察者销毁了");
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

@end
