//
//  LeftViewController.mm
//  LeafBridge
//
//  Created by Alex Denisov on 14.04.13.
//  Copyright (c) 2013 okolodev. All rights reserved.
//

#include "LeftViewController.h"

LeftViewController::LeftViewController(NSString *nibname, NSBundle *bundle)
: LB::ViewController(nibname, bundle) {}


void LeftViewController::viewDidLoad()
{
    LB::ViewController::viewDidLoad();
    UIViewController *vc = *this;
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 14, 23, 344)];
    view.backgroundColor = [UIColor redColor];
    [vc.view addSubview:view];
}
