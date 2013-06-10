//
//  Person.m
//  TimeAfterTime
//
//  Created by Chetan Shenoy on 6/7/13.
//  Copyright (c) 2013 Chetan Shenoy. All rights reserved.
//

#import "Person.h"

@implementation Person

@synthesize heightInMeters, weightInKilos;

- (float)bodyMassIndex
{
    float h = [self heightInMeters];
    return [self weightInKilos] / (h * h);
}

@end
