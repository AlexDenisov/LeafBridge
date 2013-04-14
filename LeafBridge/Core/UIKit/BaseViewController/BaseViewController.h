//
//  BaseViewController.h
//  LeafBridge
//
//  Created by Alex Denisov on 14.04.13.
//  Copyright (c) 2013 okolodev. All rights reserved.
//

#pragma once

namespace LB {
    class BaseViewController {
    protected:
        virtual void init(NSString *nibname = nil, NSBundle *bundle = nil) = 0;
    public:
        virtual ~BaseViewController();
        
        virtual void viewDidLoad() = 0;
        
        virtual operator UIViewController *() const = 0;
    };
}
