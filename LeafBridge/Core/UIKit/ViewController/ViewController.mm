//
//  ViewController.mm
//  LeafBridge
//
//  Created by Alex Denisov on 14.04.13.
//  Copyright (c) 2013 okolodev. All rights reserved.
//

#include "ViewController.h"
#include "ViewControllerProxy.h"
#include "View.h"

namespace LB {
    ViewController::ViewController(NSString *nibName, NSBundle *bundle)
    {
//        _view = nullptr;
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
    
    void ViewController::setView(LB::View *view)
    {
        _view = view;
        _viewController.view = *view;
    }
    
    View *ViewController::view()
    {
        if (_view == nullptr) {
            _view = new View(_viewController.view);
        }
        return _view;
    }
}



