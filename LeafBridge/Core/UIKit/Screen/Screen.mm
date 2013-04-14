//
//  Screen.mm
//  LeafBridge
//
//  Created by Alex Denisov on 14.04.13.
//  Copyright (c) 2013 okolodev. All rights reserved.
//

#include "Screen.h"
#include "Rect.h"

namespace LB {
    Screen::Screen(UIScreen *screen)
    : _screen(screen) {}
    
    Rect Screen::bounds() const {
        return Rect(_screen.bounds);
    }
}
