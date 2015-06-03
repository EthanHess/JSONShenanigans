//
//  ViewController.h
//  JSONShenanigans
//
//  Created by Ethan Hess on 4/6/15.
//  Copyright (c) 2015 Ethan Hess. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewControllerDataSource.h"

@interface ViewController : UIViewController

@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) ViewControllerDataSource *dataSource;

@end

