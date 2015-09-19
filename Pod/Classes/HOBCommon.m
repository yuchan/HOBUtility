//
//  HOBCommon.m
//  Pods
//
//  Created by Ohashi Yusuke on 9/19/15.
//
//

#import "HOBCommon.h"

/*
 *  System Versioning Preprocessor Macros
 */

#define SYSTEM_VERSION_EQUAL_TO(v) ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] == NSOrderedSame)
#define SYSTEM_VERSION_GREATER_THAN(v) ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] == NSOrderedDescending)
#define SYSTEM_VERSION_GREATER_THAN_OR_EQUAL_TO(v) ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] != NSOrderedAscending)
#define SYSTEM_VERSION_LESS_THAN(v) ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] == NSOrderedAscending)
#define SYSTEM_VERSION_LESS_THAN_OR_EQUAL_TO(v) ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] != NSOrderedDescending)

@implementation HOBCommon

+ (BOOL)systemVersionEqualTo:(NSString*)version
{
    return SYSTEM_VERSION_EQUAL_TO(version);
}

+ (BOOL)systemVersionLessThan:(NSString*)version
{
    return SYSTEM_VERSION_LESS_THAN(version);
}

+ (BOOL)systemVersionLessThanOrEqualTo:(NSString*)version
{
    return SYSTEM_VERSION_LESS_THAN_OR_EQUAL_TO(version);
}

+ (BOOL)systemVersionGreaterThan:(NSString*)version
{
    return SYSTEM_VERSION_GREATER_THAN(version);
}

+ (BOOL)systemVersionGreaterThanOrEqualTo:(NSString*)version
{
    return SYSTEM_VERSION_GREATER_THAN_OR_EQUAL_TO(version);
}

@end
