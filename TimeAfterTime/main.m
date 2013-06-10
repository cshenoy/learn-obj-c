//
//  main.m
//  TimeAfterTime
//
//  Created by Chetan Shenoy on 6/4/13.
//  Copyright (c) 2013 Chetan Shenoy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "StockHolding.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        StockHolding *one = [[StockHolding alloc] init];
        
        [one setCurrentSharePrice:20.5];
        [one setPurchaseSharePrice:10.53];
        [one setNumberOfShares:5000];
        
        float two = [one costInDollars];
        
        NSLog(@"current share price of $%0.2f were originally bought at $%0.2f. this cost $%0.2f! but dag yall, they're now worth $%0.2f. andddd %@", [one currentSharePrice], [one purchaseSharePrice], two, [one valueInDollars], one);
    }
    return 0;
}