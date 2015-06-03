//
//  ZipController.h
//  JSONShenanigans
//
//  Created by Ethan Hess on 4/6/15.
//  Copyright (c) 2015 Ethan Hess. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Zip.h"

@interface ZipController : NSObject

@property (nonatomic, strong) NSArray *zipCodes;

+ (ZipController *)sharedInstance;

@end
