//
//  ViewController.m
//  ZCImageAnimationControllerDome
//
//  Created by 唐周成 on 16/1/20.
//  Copyright © 2016年 zc. All rights reserved.
//

#import "ViewController.h"
#import "ZCImageAnimationController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)startTestAnimaiton
{
    UIView * testAnimaitonView = [[UIView alloc] initWithFrame:CGRectMake(0, self.view.frame.size.height / 2, 100, 230)];
    testAnimaitonView.center = CGPointMake(self.view.center.x, testAnimaitonView.center.y);
    [self.view addSubview:testAnimaitonView];
    
    ZCImageAnimationController * _testAnimationController = [[ZCImageAnimationController alloc] init];
    
    _testAnimationController.animationView = testAnimaitonView;
    _testAnimationController.firstImageDelay = 1.0;//首帧图片停留延时
    _testAnimationController.lastImageDelay = 1.0;//最后一帧图片停留延时
    _testAnimationController.animationRepeatCount = 0;//动画循环次数
    _testAnimationController.animationTimeoutInterval = 0;
    _testAnimationController.animationDuration = 5;//动画执行时间
    _testAnimationController.animationImageCount = 71;//动画图片总数
    
    _testAnimationController.firstImageNamed = @"cy_1.png";
    _testAnimationController.lastImageNamed = @"cy_71.png";
    _testAnimationController.animationImageNamedAtIndex = ^NSString * (NSInteger index){//循环获取每一帧图片名
        NSString * number = [NSString stringWithFormat:@"%@", @(index+1)];
        NSString * imageNamed = [NSString stringWithFormat:@"cy_%@.png", number];//获取到图片名
        return imageNamed;
    };
    
    _testAnimationController.animationViewWillDisappear = ^{
        //动画视图即将消失
    };
    [_testAnimationController beginImageAnimationWithDidFinishBlock:^(BOOL finish){//开始执行动画
        //动画执行完成
    }];
}

- (void)startFireAnimaiton
{
    UIView * fireAnimaitonView = [[UIView alloc] initWithFrame:CGRectMake(0, 50, 150, 150)];
    fireAnimaitonView.center = CGPointMake(self.view.center.x, fireAnimaitonView.center.y);
    [self.view addSubview:fireAnimaitonView];
    
    ZCImageAnimationController * _fireAnimationController = [[ZCImageAnimationController alloc] init];
    
    _fireAnimationController.animationView = fireAnimaitonView;
    _fireAnimationController.firstImageDelay = 0.0;//首帧图片停留延时
    _fireAnimationController.lastImageDelay = 0.0;//最后一帧图片停留延时
    _fireAnimationController.animationRepeatCount = 0;//动画循环次数
    _fireAnimationController.animationTimeoutInterval = 0;
    _fireAnimationController.animationDuration = 2;//动画执行时间
    _fireAnimationController.animationImageCount = 17;//动画图片总数
    
    _fireAnimationController.firstImageNamed = @"campFire01.gif";
    _fireAnimationController.lastImageNamed = @"campFire17.gif";
    _fireAnimationController.animationImageNamedAtIndex = ^NSString * (NSInteger index){//循环获取每一帧图片名
        NSString * number = (index + 1 > 9 ? [NSString stringWithFormat:@"%@", @(index+1)] : [NSString stringWithFormat:@"0%@", @(index+1)]);
        NSString * imageNamed = [NSString stringWithFormat:@"campFire%@.gif", number];//获取到图片名
        return imageNamed;
    };
    
    _fireAnimationController.animationViewWillDisappear = ^{
        //动画视图即将消失
    };
    [_fireAnimationController beginImageAnimationWithDidFinishBlock:^(BOOL finish){//开始执行动画
        //动画执行完成
    }];
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self startFireAnimaiton];
    [self startTestAnimaiton];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
