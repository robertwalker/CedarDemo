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
        foo = [[Foo alloc] init];
    });
    
    afterEach(^{
        [foo release];
    });

    it(@"should say hello", ^{
        assertThat([foo sayHello], equalTo(@"Hi, my name is Foo."));
    });

    it(@"should be an instance of it's class", ^{
        assertThat(foo, instanceOf([Foo class]));
    });

    it(@"should eventually do something cool", PENDING);
});

SPEC_END
