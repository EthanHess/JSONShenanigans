//
//  DetailViewController.m
//  JSONShenanigans
//
//  Created by Ethan Hess on 4/6/15.
//  Copyright (c) 2015 Ethan Hess. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.cityLabel = [[UILabel alloc]initWithFrame:CGRectMake(50, 100, self.view.frame.size.width - 100, 50)];
    self.cityLabel.backgroundColor = [UIColor lightGrayColor];
    [self.view addSubview:self.cityLabel];
    
    self.populationLabel = [[UILabel alloc]initWithFrame:CGRectMake(50, 200, self.view.frame.size.width - 100, 50)];
    self.populationLabel.backgroundColor = [UIColor lightGrayColor];
    [self.view addSubview:self.populationLabel];
    
    if (self.zip) {
        [self updateWithZip:self.zip];
    }

    
}

- (void)updateWithZip:(Zip *)zip {
    
    self.cityLabel.text = [NSString stringWithFormat:@"%@, %@", zip.city, zip.state];
    self.populationLabel.text = [NSString stringWithFormat:@"%ld", (long)zip.population];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
