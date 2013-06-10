//
//  Asset.m
//  TimeAfterTime
//
//  Created by Chetan Shenoy on 6/10/13.
//  Copyright (c) 2013 Chetan Shenoy. All rights reserved.
//

#import "Asset.h"

@implementation Asset

@synthesize label, resaleValue;

- (NSString *)description
{
    return [NSString stringWithFormat:@"<%@: $%d >", [self label], [self resaleValue]];
}

- (void)dealloc
{
    NSLog(@"deallocating %@", self);
}

@end
