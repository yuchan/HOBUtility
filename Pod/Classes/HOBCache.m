//
//  HOBCache.m
//  Pods
//
//  Created by Ohashi Yusuke on 2/20/15.
//
//

#import "HOBCache.h"

@interface HOBCache ()
@property (nonatomic) NSMutableDictionary* cacheObject;
@property (nonatomic) dispatch_queue_t queue;
@end

@implementation HOBCache

- (id)init
{
    self = [super init];
    if (self) {
        _cacheObject = [NSMutableDictionary new];
        _queue = dispatch_queue_create(NULL, DISPATCH_QUEUE_CONCURRENT);
        return self;
    }
    return nil;
}

+ (id)sharedCache
{
    static dispatch_once_t dispatch_once_p;
    static id instance = nil;
    dispatch_once(&dispatch_once_p, ^{
        instance = [[self alloc] init];
    });

    return instance;
}

- (void)setCache:(id)obj forKey:(NSString*)key
{
    dispatch_async(self.queue, ^{
        [self.cacheObject setObject:obj forKey:key];
    });
}

- (id)cacheForKey:(NSString*)key
{
    @synchronized(self)
    {
        return [self.cacheObject objectForKey:key];
    }
}

- (void)removeCacheForKey:(NSString*)key
{
    dispatch_async(self.queue, ^{
        [self.cacheObject removeObjectForKey:key];
    });
}

- (void)removeAllCaches
{
    dispatch_async(self.queue, ^{
        [self.cacheObject removeAllObjects];
    });
}
@end
