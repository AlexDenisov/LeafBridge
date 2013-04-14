//
//  Window.h
//  LeafBridge
//
//  Created by Alex Denisov on 14.04.13.
//  Copyright (c) 2013 okolodev. All rights reserved.
//

#pragma once

#import <UIKit/UIKit.h>

namespace LB {
    class Rect;
    class BaseViewController;
    
    class Window {
    private:
        UIWindow *_window;
        BaseViewController *_rootViewController;
    public:
        Window(Rect rect);
        virtual ~Window();
        
        void setRootViewController(LB::BaseViewController *rootViewController);
        LB::BaseViewController *rootViewController() const;
        
        void makeKeyAndVisible();
        
        operator UIWindow *() const;
    };
}
