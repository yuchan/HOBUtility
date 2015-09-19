//
//  HOBCommonTest.m
//  HOBUtility
//
//  Created by Ohashi Yusuke on 9/19/15.
//  Copyright © 2015 yuchan. All rights reserved.
//

#import "HOBCommon.h"
#import <Expecta/Expecta.h>

SpecBegin(HOBCommonSpec)

    describe(@"version check", ^{
        it(@"greater than", ^{
            expect([HOBCommon systemVersionGreaterThan:@"6.0"]).to.equal(YES);
        });

        it(@"greater than or equal to 6.0", ^{
            expect([HOBCommon systemVersionGreaterThanOrEqualTo:@"6.0"]).to.equal(YES);
        });

        it(@"equal to", ^{
            expect([HOBCommon systemVersionEqualTo:@"6.0"]).to.equal(NO);
        });

        it(@"less than 6.0", ^{
            expect([HOBCommon systemVersionLessThan:@"6.0"]).to.equal(NO);
        });

        it(@"less than or equal to 6.0", ^{
            expect([HOBCommon systemVersionLessThanOrEqualTo:@"6.0"]).to.equal(NO);
        });
    });

SpecEnd