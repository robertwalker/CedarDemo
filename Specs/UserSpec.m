//
//  UserSpec.m
//  CedarDemo
//
//  Created by Robert Walker on 10/13/10.
//  Copyright 2010 Robert Walker. All rights reserved.
//

#import <Cedar/SpecHelper.h>
#define HC_SHORTHAND
#import <OCHamcrest/OCHamcrest.h>
#import <OCMock/OCMock.h>
#import "User.h"

SPEC_BEGIN(UserSpec)

describe(@"User", ^{
    __block User *user;

    beforeEach(^{
        user = [[User alloc] init];
    });

	afterEach(^{
	    [user release];
	});

    sharedExamplesFor(@"all users", ^(NSDictionary *context) {
        it(@"should require 'login'", PENDING);
        it(@"should require 'password'", PENDING);
    });

    describe(@"regular user", ^{
        itShouldBehaveLike(@"all users");

        it(@"should not be able to access admin features", PENDING);
    });

    describe(@"admin user", ^{
        itShouldBehaveLike(@"all users");

        it(@"should have access to admin features", PENDING);
    });
});

SPEC_END
