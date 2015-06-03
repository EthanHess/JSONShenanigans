//
//  ZipController.m
//  JSONShenanigans
//
//  Created by Ethan Hess on 4/6/15.
//  Copyright (c) 2015 Ethan Hess. All rights reserved.
//

#import "ZipController.h"

@implementation ZipController


+ (ZipController *)sharedInstance {
    static ZipController *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [ZipController new];
        [sharedInstance loadZips]; 
    });
    
    return sharedInstance;
    
}


- (void)loadZips {
    
    
    NSBundle *bundle = [NSBundle mainBundle];
    
    NSError *error;
    
    
    NSArray *zipInfo = [NSJSONSerialization JSONObjectWithData:[NSData dataWithContentsOfURL:[bundle URLForResource:@"zips" withExtension:@"json.txt"]] options:kNilOptions error:&error];
   
    if (error) {
        NSLog(@"Could not parse Json because %@", error.debugDescription);
    }
    
    NSMutableArray *zipCodes = [NSMutableArray new];
    
    for (NSDictionary *dictionary in zipInfo) {
        Zip *zip = [[Zip alloc] initWithDictionary:dictionary];
        [zipCodes addObject:zip];
    }
    
    if (zipCodes) {
        self.zipCodes = zipCodes;
    }
        
}


@end
