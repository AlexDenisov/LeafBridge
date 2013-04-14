//
//  LeftViewController.h
//  LeafBridge
//
//  Created by Alex Denisov on 14.04.13.
//  Copyright (c) 2013 okolodev. All rights reserved.
//

#import "ViewController.h"

class LeftViewController : public LB::ViewController {
    
public:
    explicit LeftViewController(NSString *nibname = nil, NSBundle *bundle = nil);
    void viewDidLoad();

};
