//
//  ZCAnimaitonViewController.m
//  ZCImageAnimationControllerDome
//
//  Created by 唐周成 on 16/1/20.
//  Copyright © 2016年 zc. All rights reserved.
//

#import "ZCAnimaitonViewController.h"

@interface ZCAnimaitonViewController ()

@end

@implementation ZCAnimaitonViewController

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
        self.vcShouldAutorotate = NO;
        self.vcSupportedInterfaceOrientations = UIInterfaceOrientationMaskPortrait;
    }
    return self;
}

- (BOOL)shouldAutorotate
{
    return self.vcShouldAutorotate;
}

- (UIInterfaceOrientationMask)supportedInterfaceOrientations{
    return self.vcSupportedInterfaceOrientations;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
