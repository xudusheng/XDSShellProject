//
//  XDSSPAppDelegate.m
//  XDSShellProject
//
//  Created by Hmily on 2017/3/25.
//  Copyright © 2017年 xudusheng. All rights reserved.
//

#import "XDSSPAppDelegate.h"

@implementation XDSSPAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions{
    
    
    UIViewController *rootViewController = _rootViewController;
    if (self.class.rootViewControllerClassString) {
        Class cls = NSClassFromString(self.class.rootViewControllerClassString);
        if (cls) {
            rootViewController = [cls new];
        }
    }
    self.window.rootViewController = rootViewController;
    self.rootViewController = rootViewController;
    [self.window makeKeyAndVisible];
    
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application{}

- (void)applicationDidEnterBackground:(UIApplication *)application{}

- (void)applicationWillEnterForeground:(UIApplication *)application{}

- (void)applicationDidBecomeActive:(UIApplication *)application{}

- (void)applicationWillTerminate:(UIApplication *)application{}

- (BOOL)application:(UIApplication *)application
            openURL:(NSURL *)url
  sourceApplication:(NSString *)sourceApplication{return YES;}

# pragma mark - 组件
- (UIWindow *)window {
    if (!_window) {
        _window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    }
    return _window;
}

static NSString *_rootViewControllerClassString = nil;
+ (void)setRootViewControllerClassString:(NSString *)rootViewControllerClassString {
    _rootViewControllerClassString = [rootViewControllerClassString copy];
}

+ (NSString *)rootViewControllerClassString {
    return _rootViewControllerClassString;
}

@end
