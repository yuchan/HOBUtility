//
//  HOBCache.h
//  Pods
//
//  Created by Ohashi Yusuke on 2/20/15.
//
//

#import <Foundation/Foundation.h>

@interface HOBCache : NSObject
+ (id)sharedCache;
- (void)setCache:(id)obj forKey:(NSString*)key;
- (id)cacheForKey:(NSString*)key;
- (void)removeCacheForKey:(NSString*)key;
- (void)removeAllCaches;
@end
