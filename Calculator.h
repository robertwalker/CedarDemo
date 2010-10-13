//
//  Calculator.h
//  CedarDemo
//
//  Created by Robert Walker on 10/12/10.
//  Copyright 2010 Robert Walker. All rights reserved.
//

#import <Cocoa/Cocoa.h>


@interface Calculator : NSObject {

}

- (int)addX:(int)x Y:(int)y;
- (int)subtractX:(int)x Y:(int)y;
- (int)multiplyX:(int)x Y:(int)y;
- (int)divideX:(int)x Y:(int)y error:(NSError **)anError;

@end
