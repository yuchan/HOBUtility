//
//  NSString+HBUtility.h
//  Rakuten_iOS_Assignment
//
//  Created by Yusuke Ohashi on 2/19/15.
//  Copyright (c) 2015 Yusuke Ohashi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (HOBUtility)
/**
 *  Trim substrings that match the regex.
 *
 *  @param regexString
 *
 *  @return newly allocated string
 */
- (NSString *)stringByTrimmingRegularExpression:(NSString *)regexString;
@end
