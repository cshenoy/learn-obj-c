//
//  StockHolding.m
//  TimeAfterTime
//
//  Created by Chetan Shenoy on 6/7/13.
//  Copyright (c) 2013 Chetan Shenoy. All rights reserved.
//

#import "StockHolding.h"

@implementation StockHolding

@synthesize currentSharePrice, numberOfShares, purchaseSharePrice;

- (float)costInDollars
{
    return [self purchaseSharePrice] * [self numberOfShares];
}

- (float)valueInDollars
{
    return [self currentSharePrice] * [self numberOfShares];
}

@end
