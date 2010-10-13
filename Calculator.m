//
//  Calculator.m
//  CedarDemo
//
//  Created by Robert Walker on 10/12/10.
//  Copyright 2010 Robert Walker. All rights reserved.
//

#import "Calculator.h"


@implementation Calculator

- (int)addX:(int)x Y:(int)y
{
    return x + y;
}

- (int)subtractX:(int)x Y:(int)y
{
    return x - y;
}

- (int)multiplyX:(int)x Y:(int)y
{
    return x * y;
}

- (int)divideX:(int)x Y:(int)y error:(NSError **)anError
{
    if (y == 0) {
        if (anError != NULL) {
            *anError = [NSError errorWithDomain:@"CalculatorErrorDomain" code:(NSInteger)1 userInfo:nil];
            return 0;
        }
    }
    return x / y;
}

@end
