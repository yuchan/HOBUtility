//
//  HOBUtilityTests.m
//  HOBUtilityTests
//
//  Created by yuchan on 02/19/2015.
//  Copyright (c) 2014 yuchan. All rights reserved.
//

#import "NSNumber+HOBUtility.h"
#import "HOBCache.h"
#import "HOBCommon.h"
#import <Expecta/Expecta.h>

SpecBegin(InitialSpecs)

    describe(@"these will pass", ^{
        NSNumber* number = [NSNumber numberWithInt:1000];
        NSString* str = [number priceString];
        it(@"can do maths", ^{
            expect(str).equal(@"1,000");
        });
    });

describe(@"cache test", ^{
    waitUntil(^(DoneCallback done) {
        // Async example blocks need to invoke done() callback.
        [[HOBCache sharedCache] setCache:@"test" forKey:@"test"];
        done();
    });

    it(@"setcache", ^{
        NSString* text = (NSString*)[[HOBCache sharedCache] cacheForKey:@"test"];
        expect(text).toNot.equal(@"testtest");
    });
});

describe(@"version check", ^{
    it(@"greater than", ^{
        expect([HOBCommon systemVersionGreaterThanOrEqualTo:@"9.0"]).equal(YES);
    });
});

SpecEnd
