//
//  AppDelegate.m
//  ZCImageAnimationControllerDome
//
//  Created by 唐周成 on 16/1/20.
//  Copyright © 2016年 zc. All rights reserved.
//

#import "AppDelegate.h"
#import "ZCImageAnimationController.h"

@interface AppDelegate ()
{
    ZCImageAnimationController * _launchingAnimationController;
}

@end

@implementation AppDelegate

- (void)showLaunchAnimaiton
{
    if (!_launchingAnimationController) {
        _launchingAnimationController = [[ZCImageAnimationController alloc] init];
    }
    _launchingAnimationController.firstImageDelay = 0.0;//首帧图片停留延时
    _launchingAnimationController.lastImageDelay = 0.5;//最后一帧图片停留延时
    _launchingAnimationController.animationRepeatCount = 1;//动画循环次数
    _launchingAnimationController.animationTimeoutInterval = 10.0;//动画循环超时时间
    _launchingAnimationController.animationDuration = 4;//动画执行时间
    _launchingAnimationController.animationImageCount = 53;//动画图片总数
    _launchingAnimationController.animationWindowLevel = UIWindowLevelNormal + 1;
    
    _launchingAnimationController.firstImageNamed = @"1.png";
    _launchingAnimationController.lastImageNamed = @"53.png";
    _launchingAnimationController.animationImageNamedAtIndex = ^NSString * (NSInteger index){//循环获取每一帧图片名
        NSString * number = (index > 9 ? [NSString stringWithFormat:@"%@", @(index+1)] : [NSString stringWithFormat:@"%@", @(index+1)]);
        NSString * imageNamed = [NSString stringWithFormat:@"%@.png", number];//获取到图片名
        return imageNamed;
    };
    
    __weak AppDelegate * waekShell = self;
    _launchingAnimationController.animationViewWillDisappear = ^{
        //动画视图即将消失
    };
    [_launchingAnimationController beginImageAnimationWithDidFinishBlock:^(BOOL finish){//开始执行动画
        //动画执行完成
        [waekShell.window makeKeyAndVisible];
    }];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    [self showLaunchAnimaiton];
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
