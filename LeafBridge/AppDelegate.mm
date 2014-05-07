//
//  AppDelegate.m
//  LeafBridge
//
//  Created by Alex Denisov on 14.04.13.
//  Copyright (c) 2013 okolodev. All rights reserved.
//

#import "AppDelegate.h"
#import "Window.h"
#import "Screen.h"
#import "Rect.h"
#import "TabbarController.h"

#import "LeftViewController.h"
#import "RightViewController.h"

#import "string.h"

using namespace LB;

@implementation AppDelegate
{
    Window *_window;
}

- (void)dealloc {
    delete _window;
}

- (BOOL)application:(UIApplication *)application
        didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    lb::string s("hello");
    NSString *ns = s;
    const char *cs = s;
    std::string ss = s;
    NSLog(@"%@ %s %s", ns, cs, ss.c_str());
    
    return YES;
    TabbarController *tabbar = new TabbarController();
    
    tabbar->setViewControllers({
        new LeftViewController(@"ViewController"),
        new RightViewController(@"ViewController")
    });

    _window = new Window(Screen().bounds());
    _window->setRootViewController(tabbar);
    
    _window->makeKeyAndVisible();
    
    return YES;
}

- (UIWindow *)window {
    return *_window;
}

@end
