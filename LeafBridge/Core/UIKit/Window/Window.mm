//
//  Window.mm
//  LeafBridge
//
//  Created by Alex Denisov on 14.04.13.
//  Copyright (c) 2013 okolodev. All rights reserved.
//

#include "Window.h"
#include "Rect.h"
#include "BaseViewController.h"

namespace LB {
    
    Window::Window(LB::Rect frame)
    {
        _window = [[UIWindow alloc] initWithFrame:frame];
    }
    
    Window::~Window() {}
    
    void Window::setRootViewController(LB::BaseViewController *rootViewController)
    {
        _rootViewController = rootViewController;
        _window.rootViewController = *rootViewController;
    }
    
    LB::BaseViewController *Window::rootViewController() const
    {
        return _rootViewController;
    }
    
    void Window::makeKeyAndVisible()
    {
        [_window makeKeyAndVisible];
    }
    
    Window::operator UIWindow *() const
    {
        return _window;
    }
}
