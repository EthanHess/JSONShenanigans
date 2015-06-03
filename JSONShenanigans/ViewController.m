//
//  ViewController.m
//  JSONShenanigans
//
//  Created by Ethan Hess on 4/6/15.
//  Copyright (c) 2015 Ethan Hess. All rights reserved.
//

#import "ViewController.h"
#import "DetailViewController.h"
#import "ZipController.h"
#import "Zip.h"

@interface ViewController () <UITableViewDelegate>

@property (nonatomic, strong) Zip *zip;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tableView = [[UITableView alloc]initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
    
    self.tableView.delegate = self;
    self.dataSource = [ViewControllerDataSource new];
    self.tableView.dataSource = self.dataSource;
    [self.dataSource registerTableView:self.tableView];
    
    [self.view addSubview:self.tableView];
    
    
}


-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    Zip *zip = [ZipController sharedInstance].zipCodes[indexPath.row];
    
    DetailViewController *detailViewController = [DetailViewController new];
    
    detailViewController.zip = zip;
    
    [self.navigationController pushViewController:detailViewController animated:YES];
    
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
