//
//  HOBUtilityTests.m
//  HOBUtilityTests
//
//  Created by yuchan on 02/19/2015.
//  Copyright (c) 2014 yuchan. All rights reserved.
//

#import <NSNumber+HOBUtility.h>

SpecBegin(InitialSpecs)

describe(@"these will pass", ^{
    NSNumber *number = [NSNumber numberWithInt:1000];
    NSString *str = [number priceString];
    it(@"can do maths", ^{
        expect(str).equal(@"1,000");
    });
});

SpecEnd
