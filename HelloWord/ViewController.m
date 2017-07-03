//
//  ViewController.m
//  HelloWord
//
//  Created by hodi on 15/06/2017.
//  Copyright © 2017 LiDC. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UIScrollViewDelegate>
@property(strong,nonatomic) UIScrollView *scrollView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Do any additional setup after loading the view, typically from a nib.
    NSArray *welcomeList = @[@"welcome_2",@"welcome_3"];
    int ScreenWidth = [[UIScreen mainScreen] bounds].size.width;
    int ScreenHeight = [[UIScreen mainScreen] bounds].size.height;
    _scrollView =[[UIScrollView alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    [_scrollView setContentSize:CGSizeMake(ScreenWidth*(welcomeList.count), ScreenHeight)];
    _scrollView.delegate = self;
    [self.view addSubview:_scrollView];
    
    for (int i=0; i<welcomeList.count; i++) {
        UIImageView *img = [[UIImageView alloc] initWithFrame:CGRectMake(ScreenWidth*i, 0, ScreenWidth, ScreenHeight)];
        [img setImage:[UIImage imageNamed:welcomeList[i]]];
        [img setContentMode:UIViewContentModeScaleAspectFill];
        [img setUserInteractionEnabled:YES];
        [_scrollView addSubview:img];
    }
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
