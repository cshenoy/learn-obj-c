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
        
        NSMutableArray *allAssets = [[NSMutableArray alloc] init];
        
        for(int i=0; i < 10; i++){
            
            // Create an array
            Asset *asset = [[Asset alloc] init];
            
            // give asset a label and resale value
            NSString *currentLabel = [NSString stringWithFormat:@"Laptop %d", i];
            [asset setLabel:currentLabel];
            [asset setResaleValue:i*17];
            
            // generate random number between 0 and 9
            NSUInteger randomIndex = random() % [employees count];
            
            // find random employee
            Employee *randomEmployee = [employees objectAtIndex:randomIndex];
            
            // assign asset to that employee
            [randomEmployee addAssetsObject:asset];
            
            [allAssets addObject:asset];
        }
        
        NSSortDescriptor *voa = [NSSortDescriptor sortDescriptorWithKey:@"valueOfAssets"
                                                              ascending:YES];
        NSSortDescriptor *ei = [NSSortDescriptor sortDescriptorWithKey:@"employeeID"
                                                             ascending:YES];
        [employees sortUsingDescriptors:[NSArray arrayWithObjects:voa, ei, nil]];
        NSLog(@"Employees: %@", employees);
        
        NSLog(@"Giving up ownership of one employee");
        
        [employees removeObjectAtIndex:5];
        
        NSLog(@"allAssets: %@", allAssets);
        
        NSPredicate *predicate = [NSPredicate predicateWithFormat:@"holder.valueOfAssets > 70"];
        NSArray *toBeReclaimed = [allAssets filteredArrayUsingPredicate:predicate];
        NSLog(@"toBeReclaimed: %@", toBeReclaimed);
        toBeReclaimed = nil;
        
        NSLog(@"Giving up ownership of array");
        
        allAssets = nil;
        employees = nil;
    }
    return 0;
}