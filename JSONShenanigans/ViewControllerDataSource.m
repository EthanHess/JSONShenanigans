//
//  ViewControllerDataSource.m
//  JSONShenanigans
//
//  Created by Ethan Hess on 4/6/15.
//  Copyright (c) 2015 Ethan Hess. All rights reserved.
//

#import "ViewControllerDataSource.h"
#import "ZipController.h"
#import "Zip.h"

static NSString * const CellID = @"CellID";

@implementation ViewControllerDataSource

- (void)registerTableView:(UITableView *)tableView {
    
    [tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:CellID];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return [ZipController sharedInstance].zipCodes.count;
    
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellID];
    
    Zip *zip = [ZipController sharedInstance].zipCodes[indexPath.row];
    
    cell.textLabel.text = [NSString stringWithFormat:@"%ld %@, %@", (long)zip.zip, zip.city, zip.state];
    
    return cell;
    
}


@end
