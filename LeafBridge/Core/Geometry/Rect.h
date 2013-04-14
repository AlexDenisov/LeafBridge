//
//  Rect.h
//  LeafBridge
//
//  Created by Alex Denisov on 14.04.13.
//  Copyright (c) 2013 okolodev. All rights reserved.
//

#pragma once

#import <UIKit/UIKit.h>

namespace LB {
    class Rect {
    private:
        CGRect _rect;
    public:
        explicit Rect(CGRect rect = CGRectZero);
        
        operator CGRect() const;
    };
}
