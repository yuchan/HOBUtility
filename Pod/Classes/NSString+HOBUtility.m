//
//  NSString+HBUtility.m
//  Rakuten_iOS_Assignment
//
//  Created by Yusuke Ohashi on 2/19/15.
//  Copyright (c) 2015 Yusuke Ohashi. All rights reserved.
//

#import "NSString+HOBUtility.h"

@implementation NSString (HOBUtility)
/**
 *  Trim substrings that match the regex.
 *
 *  @param regexString
 *
 *  @return newly allocated string
 */
- (NSString *)stringByTrimmingRegularExpression:(NSString *)regexString
{
    NSMutableString *caption = [self mutableCopy];
    NSError *error;
    NSRegularExpression* regex = [NSRegularExpression regularExpressionWithPattern:regexString options:NSRegularExpressionCaseInsensitive error:&error];
    if (error) {
        return caption;
    }
    NSArray *matches = [regex matchesInString:caption options:0 range:NSMakeRange(0, caption.length)];
    [matches enumerateObjectsWithOptions:NSEnumerationReverse usingBlock:^(NSTextCheckingResult* match, NSUInteger idx, BOOL *stop) {
        [caption deleteCharactersInRange:match.range];
    }];
    
    return caption;
}
@end
