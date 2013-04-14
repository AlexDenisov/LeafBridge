//
//  ViewControllerProxy.mm
//  LeafBridge
//
//  Created by Alex Denisov on 14.04.13.
//  Copyright (c) 2013 okolodev. All rights reserved.
//

#include <objc/runtime.h>

#include "ViewControllerProxy.h"
#include "ViewController.h"

static void class_swizzleMehods(Class receiver, SEL origin, SEL swizzle)
{
    Method originMethod = class_getInstanceMethod(receiver, origin);
    Method swizzleMethod = class_getInstanceMethod(receiver, swizzle);
    
    method_exchangeImplementations(originMethod, swizzleMethod);
}

namespace LB { 
    ViewControllerProxyMap ViewControllerProxy::proxyMap = ViewControllerProxyMap();
    
    void ViewControllerProxy::proxy(id sender, BaseViewController *receiver)
    {
        proxyMap[sender] = receiver;
        
        SEL proxySEL = @selector(viewDidLoadProxy);
        IMP proxyIMP = reinterpret_cast<IMP>(ViewControllerProxy::viewDidLoadProxy);
        class_addMethod([sender class],
                        proxySEL,
                        proxyIMP,
                        NULL);
        
        class_swizzleMehods([sender class], @selector(viewDidLoad), proxySEL);
    }
    
    
    void ViewControllerProxy::viewDidLoadProxy(id sender, SEL cmd)
    {
        BaseViewController *receiver = proxyMap[sender];
        receiver->viewDidLoad();
    }
} 