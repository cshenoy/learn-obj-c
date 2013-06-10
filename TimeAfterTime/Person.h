//
//  Person.h
//  TimeAfterTime
//
//  Created by Chetan Shenoy on 6/7/13.
//  Copyright (c) 2013 Chetan Shenoy. All rights reserved.
//

#import <Foundation/Foundation.h>

// The class Person inherits all the instance variables
// and methods defined by the class NSObject
@interface Person : NSObject
{
    float heightInMeters;
    int weightInKilos;
}

// You will be able to set those instance variables using these methods
@property float heightInMeters;
@property int weightInKilos;

// This method calculates the Body Mass Index
- (float)bodyMassIndex;
@end
