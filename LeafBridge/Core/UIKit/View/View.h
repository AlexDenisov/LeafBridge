//
//  View.h
//  LeafBridge
//
//  Created by Alex Denisov on 15.04.13.
//  Copyright (c) 2013 okolodev. All rights reserved.
//

#pragma once

#import <UIKit/UIKit.h>

#include "Rect.h"

namespace LB {
    class Rect;
    
    class View {
    private:
        UIView *_view;
    public:
        explicit View(Rect rect);
        View(UIView *view);
        
        void addSubview(View *view);
        
        void setBackgroundColor(UIColor *color);
        
        operator UIView *() const;
    };
}
