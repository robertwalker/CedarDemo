//
//  GReaderSpec.m
//  CedarDemo
//
//  Created by Robert Walker on 10/6/10.
//  Copyright 2010 Robert Walker. All rights reserved.
//

#import <Cedar/SpecHelper.h>
#define HC_SHORTHAND
#import <OCHamcrest/OCHamcrest.h>
#import <OCMock/OCMock.h>
#import "GReader.h"

SPEC_BEGIN(GReaderSpec)

describe(@"GReader", ^{
    __block GReader *gr;
    __block id mock;
    
    beforeEach(^{
        gr = [[GReader alloc] init];
        mock = [OCMockObject partialMockForObject:gr];
        [[[mock expect] andReturn:@"I'm a fake response."] post:[OCMArg any]];
    });

    afterEach(^{
        [gr release];
	});

    it(@"should authenticate", ^{
        NSString *response;
        response = [gr authenticateWithUsername:@"robert" password:@"password"];
        [mock verify];

        // A sanity check to make sure the mock is intervening
        assertThat(response, isNot(@"I'm the real deal response from web service!"));
        assertThat(response, is(@"I'm a fake response."));
    });
});

SPEC_END
