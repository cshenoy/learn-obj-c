//
//  main.m
//  TimeAfterTime
//
//  Created by Chetan Shenoy on 6/4/13.
//  Copyright (c) 2013 Chetan Shenoy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Employee.h"
#import "Asset.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        // Create an array of Employee objects
        NSMutableArray *employees = [[NSMutableArray alloc] init];
        
        for(int i=0; i< 10; i++){
            
            //Create an instance of Employee
            Employee *person = [[Employee alloc] init];
            
            //
            [person setWeightInKilos:90+i];
            [person setHeightInMeters:1.8 - i/10.0];
            [person setEmployeeID:i];
            
            [employees addObject:person];
        }
        
        for(int i=0; i < 10; i++){
            
            // Create an array
            //Asset *asset = [[Asset alloc] init];
        }
    }
    return 0;
}