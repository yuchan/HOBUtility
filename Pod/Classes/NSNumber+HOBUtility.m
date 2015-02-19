//
//  NSNumber+HBUtility.m
//  Rakuten_iOS_Assignment
//
//  Created by Yusuke Ohashi on 2/19/15.
//  Copyright (c) 2015 Yusuke Ohashi. All rights reserved.
//

#import "NSNumber+HOBUtility.h"

@implementation NSNumber (HOBUtility)
- (NSString *)priceString
{
    NSNumberFormatter *formatter = [[NSNumberFormatter alloc] init];
    [formatter setNumberStyle:NSNumberFormatterDecimalStyle];
    [formatter setGroupingSeparator:@","];
    [formatter setGroupingSize:3];
    NSString *result = [formatter stringFromNumber:self];
    return result;
}
@end
