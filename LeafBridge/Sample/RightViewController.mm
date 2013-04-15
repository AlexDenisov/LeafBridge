//
//  RightViewController.mm
//  LeafBridge
//
//  Created by Alex Denisov on 14.04.13.
//  Copyright (c) 2013 okolodev. All rights reserved.
//

#include "RightViewController.h"
#include "Rect.h"
#include "View.h"

RightViewController::RightViewController(NSString *nibname, NSBundle *bundle)
: LB::ViewController(nibname, bundle) {}


void RightViewController::viewDidLoad()
{
    LB::ViewController::viewDidLoad();
    
    LB::View *view = new LB::View(LB::Rect(CGRectMake(50, 14, 23, 160)));
    view->setBackgroundColor([UIColor greenColor]);
    this->view()->addSubview(view);
}