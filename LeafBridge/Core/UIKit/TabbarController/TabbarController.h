//
//  TabbarController.h
//  LeafBridge
//
//  Created by Alex Denisov on 14.04.13.
//  Copyright (c) 2013 okolodev. All rights reserved.
//

#pragma once

#include <vector>
#include "BaseViewController.h"

namespace LB {
    class TabbarController : public BaseViewController {
    private:
        UITabBarController *_tabBarController;
        std::vector<BaseViewController *> _viewControllers;
        
        void init(NSString *nibname, NSBundle *bundle);
    public:
        TabbarController(NSString *nibname = nil, NSBundle *bundle = nil);
        
        void setViewControllers(std::vector<BaseViewController *> viewControllers);
        
        /*virtual*/ void viewDidLoad();
        /*virtual*/ operator UIViewController *() const;
    };
}
