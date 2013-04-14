//
//  Rect.mm
//  LeafBridge
//
//  Created by Alex Denisov on 14.04.13.
//  Copyright (c) 2013 okolodev. All rights reserved.
//

#include "Rect.h"

namespace LB {
    Rect::Rect(CGRect rect)
    : _rect(rect) {}
    
    
    Rect::operator CGRect() const
    {
        return _rect;
    }
}
