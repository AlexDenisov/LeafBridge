//
//  ViewControllerProxy.h
//  LeafBridge
//
//  Created by Alex Denisov on 14.04.13.
//  Copyright (c) 2013 okolodev. All rights reserved.
//

#pragma once

#include <map>

namespace LB {
    class BaseViewController;
    
    typedef std::map<id, BaseViewController *> ViewControllerProxyMap;
    
    class ViewControllerProxy {
    private:
        static ViewControllerProxyMap proxyMap;
        
    public:
        static void proxy(id sender, BaseViewController *receiver);
        
        static void viewDidLoadProxy(id obj, SEL cmd);
    };
}