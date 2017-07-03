//
//  ViewController.m
//  HelloWord
//
//  Created by hodi on 15/06/2017.
//  Copyright © 2017 LiDC. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UIScrollView *scrollView = [[UIScrollView alloc]init];
    int ScreenWidth = [[UIScreen mainScreen] bounds].size.width;
    int ScreenHeight = [[UIScreen mainScreen] bounds].size.height;
    [scrollView setContentSize:CGSizeMake(ScreenWidth, ScreenHeight)];
    [self.view addSubview:scrollView];
    UIImageView *img = [[UIImageView alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    [img setImage:[UIImage imageNamed:@"welcome"]];
    [img setContentMode:UIViewContentModeScaleAspectFill];
    [img setUserInteractionEnabled:YES];
    [self.view addSubview:img];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
