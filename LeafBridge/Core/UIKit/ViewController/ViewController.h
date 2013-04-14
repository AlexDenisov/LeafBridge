//
//  ViewController.h
//  LeafBridge
//
//  Created by Alex Denisov on 14.04.13.
//  Copyright (c) 2013 okolodev. All rights reserved.
//

#pragma once

#import "BaseViewController.h"

namespace LB { 
    class ViewController : public BaseViewController {
    private:
        UIViewController *_viewController;
        
        void init(NSString *nibname = nil, NSBundle *bundle = nil);
    public:
        ViewController(NSString *nibName = nil, NSBundle *bundle = nil);
        /*virtual*/ ~ViewController();
        
        /*virtual*/ void viewDidLoad();
        
        /*virtual*/ operator UIViewController *() const;
    };
} 