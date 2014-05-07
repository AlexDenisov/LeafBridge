//
//  string.h
//  LeafBridge
//
//  Created by AlexDenisov on 5/7/14.
//  Copyright (c) 2014 okolodev. All rights reserved.
//

#ifndef __LeafBridge__string__
#define __LeafBridge__string__

#import <Foundation/Foundation.h>
#include <string>

namespace lb
{
    class string
    {
    private:
        NSString *_backingString;
    public:
        string(const char *string);
        string(const std::string &string);
        string(NSString *string);
        
        operator const char *() const;
        operator const std::string() const;
        operator NSString *() const;
    };
}

#endif /* defined(__LeafBridge__string__) */
