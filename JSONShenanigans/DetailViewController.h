//
//  DetailViewController.h
//  JSONShenanigans
//
//  Created by Ethan Hess on 4/6/15.
//  Copyright (c) 2015 Ethan Hess. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Zip.h"

@interface DetailViewController : UIViewController

@property (nonatomic, strong) UILabel *cityLabel;
@property (nonatomic, strong) UILabel *populationLabel;
@property (nonatomic, strong) Zip *zip; 

@end
