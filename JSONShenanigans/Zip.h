//
//  Zip.h
//  JSONShenanigans
//
//  Created by Ethan Hess on 4/6/15.
//  Copyright (c) 2015 Ethan Hess. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>

@interface Zip : NSObject

@property (assign, nonatomic) NSInteger zip;
@property (strong, nonatomic) NSString *city;
@property (strong, nonatomic) CLLocation *location;
@property (assign, nonatomic) NSInteger population;
@property (strong, nonatomic) NSString *state; 


- (instancetype)initWithDictionary:(NSDictionary *)dictionary;


@end
