//
//  ViewController.m
//  WSLandscapeToolExample
//
//  Created by 马文帅 on 17/3/27.
//  Copyright © 2017年 mawenshuai. All rights reserved.
//

#import "ViewController.h"
#import "WSLandscapeVC.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"不支持横屏";
}

- (IBAction)pushButtonClick:(UIButton *)sender {
    [self.navigationController pushViewController:[[WSLandscapeVC alloc] init] animated:YES];
}

@end
