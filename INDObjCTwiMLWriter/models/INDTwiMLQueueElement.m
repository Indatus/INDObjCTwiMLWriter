//
//  INDTwiMLQueueElement.m
//  INDObjCTwiMLWriter
//
//  Created by Jeff Trespalacios on 3/11/14.
//  Copyright (c) 2014 Indatus. All rights reserved.
//

#import "INDTwiMLQueueElement.h"

static NSString* const kTagName = @"Queue";
static NSString* const kUrlKey = @"url";
static NSString* const kMethodKey = @"method";

@implementation INDTwiMLQueueElement

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
