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

static void class_swizzleMehods(Class receiver, SEL origin, SEL replace)
{

    Method origMethod = class_getInstanceMethod(receiver, origin);
    Method newMethod = class_getInstanceMethod(receiver, replace);
    if(class_addMethod(receiver,
                       origin,
                       method_getImplementation(newMethod),
                       method_getTypeEncoding(newMethod)))
    {
        class_replaceMethod(receiver,
                            replace,
                            method_getImplementation(origMethod),
                            method_getTypeEncoding(origMethod));
    } else {
        method_exchangeImplementations(origMethod, newMethod);
    }
}

namespace LB { 
    ViewControllerProxyMap ViewControllerProxy::proxyMap = ViewControllerProxyMap();
    
    void ViewControllerProxy::proxy(id sender, BaseViewController *receiver)
    {
        proxyMap[sender] = receiver;
        
        SEL proxySEL = @selector(viewDidLoadProxy);
        IMP proxyIMP = reinterpret_cast<IMP>(ViewControllerProxy::viewDidLoadProxy);
        BOOL result = class_addMethod([sender class],
                        proxySEL,
                        proxyIMP,
                        NULL);
        if (result) {
            class_swizzleMehods([sender class], @selector(viewDidLoad), proxySEL);
        }
    }
    
    
    void ViewControllerProxy::viewDidLoadProxy(id sender, SEL cmd)
    {
        [sender performSelector:@selector(viewDidLoadProxy)];
        BaseViewController *receiver = proxyMap[sender];
        receiver->viewDidLoad();
    }
} 