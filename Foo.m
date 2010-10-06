//
//  Foo.m
//  CedarDemo
//
//  Created by Robert Walker on 10/5/10.
//  Copyright 2010 Robert Walker. All rights reserved.
//

#import "Foo.h"


@implementation Foo

- (NSString *)say:(NSString *)greeting
{
    return greeting;
}

- (NSNumber *)addX:(NSNumber *)x Y:(NSNumber *)y;
{
    return [NSNumber numberWithInt:([x intValue] + [y intValue])];
}

@end
