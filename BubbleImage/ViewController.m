//
//  ViewController.m
//  BubbleImage
//
//  Created by 小飞鸟 on 16/4/26.
//  Copyright © 2016年 小飞鸟. All rights reserved.
//

#import "ViewController.h"
#import "UZBubbleView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UZBubbleView * bubbleView=[[UZBubbleView alloc]initWithFrame:CGRectMake(100, 100, 120, 40)];
    [self.view addSubview:bubbleView];
    
    CGAffineTransform at = CGAffineTransformMakeRotation(-M_PI);
    
    [bubbleView setTransform:at];
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
