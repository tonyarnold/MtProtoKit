/*
 * This is the source code of Telegram for iOS v. 1.1
 * It is licensed under GNU GPL v. 2 or later.
 * You should have received a copy of the license in this archive (see LICENSE).
 *
 * Copyright Peter Iakovlev, 2013.
 */

#import <MTProtoKit/MTDatacenterAddress.h>

@implementation MTDatacenterAddress

- (instancetype)initWithIp:(NSString *)ip port:(uint16_t)port
{
    self = [super init];
    if (self != nil)
    {
        _ip = ip;
        _port = port;
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    self = [super init];
    if (self != nil)
    {
        _ip = [aDecoder decodeObjectForKey:@"ip"];
        _host = [aDecoder decodeObjectForKey:@"host"];
        _port = (uint16_t)[aDecoder decodeIntForKey:@"port"];
    }
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{
    [aCoder encodeObject:_ip forKey:@"ip"];
    [aCoder encodeObject:_host forKey:@"host"];
    [aCoder encodeInt:_port forKey:@"port"];
}

@end
