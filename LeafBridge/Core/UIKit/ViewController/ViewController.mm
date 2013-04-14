//
//  ViewController.mm
//  LeafBridge
//
//  Created by Alex Denisov on 14.04.13.
//  Copyright (c) 2013 okolodev. All rights reserved.
//

#include "ViewController.h"
#include "ViewControllerProxy.h"

namespace LB {
    ViewController::ViewController(NSString *nibName, NSBundle *bundle)
    {
        this->init(nibName, bundle);
    }
    
    ViewController::~ViewController() {}
    
    void ViewController::init(NSString *nibname, NSBundle *bundle)
    {
        _viewController = [[UIViewController alloc] initWithNibName:nibname bundle:bundle];
        ViewControllerProxy::proxy(_viewController, this);
    }
    
    ViewController::operator UIViewController *() const
    {
        return _viewController;
    }
    
    void ViewController::viewDidLoad() {}
} 



