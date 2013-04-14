//
//  TabbarController.mm
//  LeafBridge
//
//  Created by Alex Denisov on 14.04.13.
//  Copyright (c) 2013 okolodev. All rights reserved.
//

#include "TabbarController.h"
#include "ViewControllerProxy.h"

namespace LB {
    TabbarController::TabbarController(NSString *nibname, NSBundle *bundle)
    {
        this->init(nibname, bundle);
    }
    
    void TabbarController::init(NSString *nibname, NSBundle *bundle)
    {
        _tabBarController = [[UITabBarController alloc] initWithNibName:nibname bundle:bundle];
        ViewControllerProxy::proxy(_tabBarController, this);
    }
    
    void TabbarController::viewDidLoad()
    {
    }
    
    TabbarController::operator UIViewController *() const
    {
        return _tabBarController;
    }
    
    void TabbarController::setViewControllers(std::vector<BaseViewController *> viewControllers)
    {
        _viewControllers = viewControllers;
        
        NSMutableArray *controllers = [NSMutableArray arrayWithCapacity:_viewControllers.size()];
        
        std::vector<BaseViewController *>::const_iterator cit = _viewControllers.begin();
        for (; cit != _viewControllers.end(); cit++) {
            [controllers addObject:**cit];
        }
        [_tabBarController setViewControllers:controllers];
    }
}
