//
//  main.m
//  XDSShellProject
//
//  Created by xudusheng on 03/25/2017.
//  Copyright (c) 2017 xudusheng. All rights reserved.
//

@import UIKit;
#import "XDSAppDelegate.h"
#import "XDSSPAppDelegate.h"
#import "XDSViewController.h"
int main(int argc, char * argv[])
{
    @autoreleasepool {
        XDSSPAppDelegate.rootViewControllerClassString = @"XDSViewController";
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([XDSSPAppDelegate class]));
    }
}
