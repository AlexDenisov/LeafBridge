//
//  View.mm
//  LeafBridge
//
//  Created by Alex Denisov on 15.04.13.
//  Copyright (c) 2013 okolodev. All rights reserved.
//

#include "View.h"
#include "Rect.h"

namespace LB {
    View::View(Rect rect)
    {
        _view = [[UIView alloc] initWithFrame:rect];
    }
    
    View::View(UIView *view)
    {
        _view = view;
    }
    
    View::operator UIView *() const
    {
        return _view;
    }

    void View::setBackgroundColor(UIColor *color)
    {
        _view.backgroundColor = color;
    }

    void View::addSubview(LB::View *view)
    {
        [_view addSubview:*view];
    }
}
