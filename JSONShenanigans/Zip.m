//
//  Zip.m
//  JSONShenanigans
//
//  Created by Ethan Hess on 4/6/15.
//  Copyright (c) 2015 Ethan Hess. All rights reserved.
//

#import "Zip.h"

static NSString * const ZipZipKey = @"id";
static NSString * const ZipCityKey = @"city";
static NSString * const ZipCoordinateKey = @"loc";
static NSString * const ZipPopulationKey = @"pop";
static NSString * const ZipStateKey = @"state";

@implementation Zip

- (instancetype)initWithDictionary:(NSDictionary *)dictionary {
    
    self = [super init];
    
    if (self) {
        self.zip = [dictionary[ZipZipKey]integerValue];
        self.city = dictionary[ZipCityKey];
        self.state = dictionary[ZipStateKey];
        self.population = [dictionary[ZipPopulationKey]integerValue];
        
        double latitude = [dictionary[ZipCoordinateKey][0] doubleValue];
        double longitude = [dictionary[ZipCoordinateKey][1] doubleValue];
        
        self.location = [[CLLocation alloc] initWithLatitude:latitude longitude:longitude];
        
    }
    
    return self;
    
}



@end
