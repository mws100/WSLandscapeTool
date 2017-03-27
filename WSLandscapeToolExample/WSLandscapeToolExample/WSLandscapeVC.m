//
//  WSLandscapeVC.m
//  WSLandscapeToolExample
//
//  Created by 马文帅 on 17/3/27.
//  Copyright © 2017年 mawenshuai. All rights reserved.
//

#import "WSLandscapeVC.h"
#import "WSLandscapeTool.h"
#import "AppDelegate.h"

@implementation WSLandscapeVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor redColor];
    self.navigationItem.title = @"我支持横屏";
    
    [WSLandscapeTool allowLandscape:(AppDelegate *)[UIApplication sharedApplication].delegate viewController:self];
}

@end
