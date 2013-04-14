//
//  RightViewController.h
//  LeafBridge
//
//  Created by Alex Denisov on 14.04.13.
//  Copyright (c) 2013 okolodev. All rights reserved.
//

#pragma once

#include "ViewController.h"

class RightViewController : public LB::ViewController {
    
public:
    explicit RightViewController(NSString *nibname = nil, NSBundle *bundle = nil);
    void viewDidLoad();
    
};