//
//  WSLandscapeTool.m
//
//  Created by 马文帅 on 17/3/27.
//  Copyright © 2017年 mawenshuai. All rights reserved.
//

#import "WSLandscapeTool.h"
#import <objc/message.h>

@implementation WSLandscapeTool

+ (void)allowLandscape:(NSObject *)appDelegate viewController:(UIViewController *)needLandscapeVC {
    //防止循环引用
    __weak typeof(UIViewController *) weakVC = needLandscapeVC;
    
    //方法原始的实现
    IMP originalIMP = method_getImplementation(class_getInstanceMethod([appDelegate class], @selector(application:supportedInterfaceOrientationsForWindow:)));
    
    //被替换后的新实现
    IMP newIMP = imp_implementationWithBlock(^(id obj, UIApplication *application, UIWindow *window){
        if (!weakVC) {
            //VC被释放后，把原来的方法替换回去
            class_replaceMethod([appDelegate class], @selector(application:supportedInterfaceOrientationsForWindow:), originalIMP, method_getTypeEncoding(class_getInstanceMethod([appDelegate class], @selector(application:supportedInterfaceOrientationsForWindow:))));
        }
        return weakVC ? UIInterfaceOrientationMaskAllButUpsideDown : UIInterfaceOrientationMaskPortrait;
    });
    
    //将方法替换
    class_replaceMethod([appDelegate class], @selector(application:supportedInterfaceOrientationsForWindow:), newIMP, method_getTypeEncoding(class_getInstanceMethod([appDelegate class], @selector(application:supportedInterfaceOrientationsForWindow:))));
}

@end
