//
//  string.cpp
//  LeafBridge
//
//  Created by AlexDenisov on 5/7/14.
//  Copyright (c) 2014 okolodev. All rights reserved.
//

#include "string.h"

namespace lb {
    string::string(const char *string) : _backingString(@(string)) {}
    string::string(const std::string &string) : _backingString(@(string.c_str())) {}
    string::string(NSString *string) : _backingString(string) {}
    
    string::operator const char *() const
    {
        return _backingString.UTF8String;
    }
    
    string::operator const std::string() const
    {
        return std::string(_backingString.UTF8String);
    }
    
    string::operator NSString *() const
    {
        return _backingString;
    }
}
