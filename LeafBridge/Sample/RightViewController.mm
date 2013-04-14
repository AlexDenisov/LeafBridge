//
//  RightViewController.mm
//  LeafBridge
//
//  Created by Alex Denisov on 14.04.13.
//  Copyright (c) 2013 okolodev. All rights reserved.
//

#include "RightViewController.h"

RightViewController::RightViewController(NSString *nibname, NSBundle *bundle)
: LB::ViewController(nibname, bundle) {}


void RightViewController::viewDidLoad()
{
    LB::ViewController::viewDidLoad();
    UIViewController *vc = *this;
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 14, 23, 344)];
    view.backgroundColor = [UIColor greenColor];
    [vc.view addSubview:view];
}