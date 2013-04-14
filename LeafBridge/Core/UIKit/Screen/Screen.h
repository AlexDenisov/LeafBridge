//
//  Screen.h
//  LeafBridge
//
//  Created by Alex Denisov on 14.04.13.
//  Copyright (c) 2013 okolodev. All rights reserved.
//

namespace LB {
    class Rect;
    
    class Screen {
    private:
        UIScreen *_screen;
    public:
        explicit Screen(UIScreen *screen = [UIScreen mainScreen]);
        
        Rect bounds() const;
    };
}
