//
//  StockHolding.h
//  TimeAfterTime
//
//  Created by Chetan Shenoy on 6/7/13.
//  Copyright (c) 2013 Chetan Shenoy. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface StockHolding : NSObject
{
    float purchaseSharePrice, currentSharePrice;
    int numberOfShares;
}

@property float purchaseSharePrice, currentSharePrice;
@property int numberOfShares;

- (float)costInDollars;
- (float)valueInDollars;

@end
