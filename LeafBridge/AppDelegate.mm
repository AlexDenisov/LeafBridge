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

using namespace LB;

@implementation AppDelegate
{
    Window *_window;
}

- (void)dealloc {
    delete _window;
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{    
    TabbarController *tabbar = new TabbarController();
    
    ViewController *vc1 = new LeftViewController(@"ViewController");
    ViewController *vc2 = new RightViewController(@"ViewController");
    
    std::vector<BaseViewController *> controllers;
    controllers.push_back(vc1);
    controllers.push_back(vc2);
    
    tabbar->setViewControllers(controllers);
    
    _window = new Window(Screen().bounds());
    _window->setRootViewController(tabbar);
    
    _window->makeKeyAndVisible();
    return YES;
}

- (UIWindow *)window {
    return *_window;
}

@end
