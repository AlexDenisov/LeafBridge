//
//  LeftViewController.mm
//  LeafBridge
//
//  Created by Alex Denisov on 14.04.13.
//  Copyright (c) 2013 okolodev. All rights reserved.
//

#include "LeftViewController.h"
#include "View.h"

LeftViewController::LeftViewController(NSString *nibname, NSBundle *bundle)
: LB::ViewController(nibname, bundle) {}


void LeftViewController::viewDidLoad()
{
    LB::ViewController::viewDidLoad();
    
    LB::View *view = new LB::View(LB::Rect(CGRectMake(0, 14, 23, 344)));
    view->setBackgroundColor([UIColor redColor]);
    this->view()->addSubview(view);
}
