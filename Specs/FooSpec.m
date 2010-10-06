//
//  FooSpec.m
//  CedarDemo
//
//  Created by Robert Walker on 10/5/10.
//  Copyright 2010 Robert Walker. All rights reserved.
//
#import <Cedar/SpecHelper.h>
#define HC_SHORTHAND
#import <OCHamcrest/OCHamcrest.h>
#import <OCMock/OCMock.h>
#import "Foo.h"

SPEC_BEGIN(FooSpec)

describe(@"Foo", ^{
    __block Foo *foo;

    beforeEach(^{
        //NSLog(@"Before each...");
        foo = [[Foo alloc] init];
    });
    
    afterEach(^{
        //NSLog(@"After each...");
        [foo release];
    });

    it(@"should say \"Hello World\"", ^{
        assertThat([foo say:@"Hello World"], equalTo(@"Hello World"));
    });

    it(@"should add two numbers", ^{
        NSNumber *x = [NSNumber numberWithInt:5];
        NSNumber *y = [NSNumber numberWithInt:4];
        NSNumber *z = [NSNumber numberWithInt:9];
        assertThat([foo addX:x Y:y], equalTo(z));
    });

    it(@"should eventually do something cool", PENDING);
});

SPEC_END
