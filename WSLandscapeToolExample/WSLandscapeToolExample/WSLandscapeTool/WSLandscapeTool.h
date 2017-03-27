//
//  WSLandscapeTool.h
//
//  Created by 马文帅 on 17/3/27.
//  Copyright © 2017年 mawenshuai. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WSLandscapeTool : NSObject

/**
 *  在需要横屏的控制器中调用此方法。
    使用前，请现在AppDelegate.m中实现application:supportedInterfaceOrientationsForWindow:方法
 *
 *  @param appDelegate     AppDelegate类 e.g.(AppDelegate *)[UIApplication sharedApplication].delegate
 *  @param needLandscapeVC 需要横屏的控制器
 */
+ (void)allowLandscape:(NSObject *)appDelegate viewController:(UIViewController *)needLandscapeVC;

@end
