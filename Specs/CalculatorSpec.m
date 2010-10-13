//
//  CalculatorSpec.m
//  CedarDemo
//
//  Created by Robert Walker on 10/12/10.
//  Copyright 2010 Robert Walker. All rights reserved.
//

#import <Cedar/SpecHelper.h>
#define HC_SHORTHAND
#import <OCHamcrest/OCHamcrest.h>
#import <OCMock/OCMock.h>
#import "Calculator.h"

SPEC_BEGIN(CalculatorSpec)

describe(@"Calculator", ^{
    __block Calculator *calc;

    beforeEach(^{
        // Given a Calculator instance
        calc = [[Calculator alloc] init];
    });

	afterEach(^{
	    [calc release];
	});

    describe(@"addition", ^{
        it(@"should add 2 and 3 to get 5", ^{
            // Given an expected value of 5
            int expected = 5;
            
            // When I add 2 + 3
            int actual = [calc addX:2 Y:3];
            
            // The result should be equal to expected value
            assertThatInt(actual, equalToInt(expected));
        });

        it(@"should add 2 and 0 to get 2", ^{
            assertThatInt([calc addX:2 Y:0], equalToInt(2));
        });
        
        it(@"should add -2 and -3 to get -5", ^{
            assertThatInt([calc addX:-2 Y:-3], equalToInt(-5));
        });
    });

    describe(@"subtraction", ^{
        it(@"should subtract 3 and 2 to get 1", ^{
            assertThatInt([calc subtractX:3 Y:2], equalToInt(1));
        });
    });

    describe(@"multiplication", ^{
        it(@"should multiply 2 and 3 to get 6", ^{
            assertThatInt([calc multiplyX:2 Y:3], equalToInt(6));
        });
    });

    describe(@"division", ^{
        __block NSError *error;

        it(@"should divide 10 by 5 to get 2", ^{
            assertThatInt([calc divideX:10 Y:5 error:&error], equalToInt(2));
        });
        
        // Specify behavior for those peskey edge cases
        it(@"should properly handle 'divide by zero'", ^{
            assertThatInt([calc divideX:10 Y:0 error:&error], equalToInt(0));
            notNilValue(error);
            assertThatInteger([error code], equalToInteger((NSInteger)1));
        });
    });
});

SPEC_END
