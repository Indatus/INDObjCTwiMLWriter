//
//  INDTwiMLEnqueueElement.m
//
//  Created by Jeff Styles on 3/10/14.
//  Copyright (c) 2014 Jeff Trespalacios. All rights reserved.
//

#import "INDTwiMLEnqueueElement.h"

static NSString* const kTagName = @"Enqueue";
static NSString * const kUrlKey = @"url";
static NSString * const kMethodKey = @"method";

@implementation INDTwiMLEnqueueElement

- (instancetype)init
{
    self = [super initWithTagName:kTagName];

    if (self) {
        _method = TwiMLHTTPMethodPOST;
    }

    return self;
}

- (NSDictionary*)attributes
{
    NSMutableDictionary* dict = [NSMutableDictionary new];
    if (_url) {
        dict[kUrlKey] = _url;
    }

    dict[kMethodKey] = [self methodString];

    return [dict copy];
}

- (NSString*)methodString
{
    switch (_method) {
    case TwiMLHTTPMethodPOST:
        return @"POST";
        break;
    case TwiMLHTTPMethodGET:
        return @"GET";
        break;
    }
}
@end
