//
//  HOBCommon.h
//  Pods
//
//  Created by Ohashi Yusuke on 9/19/15.
//
//

#import <Foundation/Foundation.h>

@interface HOBCommon : NSObject

+ (BOOL)systemVersionEqualTo:(NSString*)version;
+ (BOOL)systemVersionGreaterThan:(NSString*)version;
+ (BOOL)systemVersionGreaterThanOrEqualTo:(NSString*)version;
+ (BOOL)systemVersionLessThan:(NSString*)version;
+ (BOOL)systemVersionLessThanOrEqualTo:(NSString*)version;

@end
