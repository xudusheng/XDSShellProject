//
//  XDSViewController.m
//  XDSShellProject
//
//  Created by xudusheng on 03/25/2017.
//  Copyright (c) 2017 xudusheng. All rights reserved.
//

#import "XDSViewController.h"

@interface XDSViewController ()

@end

@implementation XDSViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor redColor];


    ({
        
        UIButton * button = [UIButton buttonWithType:UIButtonTypeCustom];
        button.frame = CGRectMake(0, 0, 70, 44);
        button.center = self.view.center;
        [button setTitle:@"检查模块更新" forState:UIControlStateNormal];
        [button setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
        button.titleLabel.font = [UIFont systemFontOfSize:13];
        [button addTarget:self action:@selector(checkModuleVersion:) forControlEvents:UIControlEventTouchUpInside];
        self.navigationItem.titleView = button;
    });
}

- (void)checkModuleVersion:(UIButton *)btton{
    NSLog(@"xxxxxxxxxxxx");

}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
