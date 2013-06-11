//
//  Asset.h
//  TimeAfterTime
//
//  Created by Chetan Shenoy on 6/10/13.
//  Copyright (c) 2013 Chetan Shenoy. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Employee;

@interface Asset : NSObject
{
    NSString *label;
    __weak Employee *holder;
    unsigned int resaleValue;
}

// strong means 'This is a pointer to an object upon which I claim ownership'
@property (strong) NSString *label;
@property (weak) Employee *holder;
@property unsigned int resaleValue;

@end
