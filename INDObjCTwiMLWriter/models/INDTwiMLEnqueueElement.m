//
//  INDTwiMLEnqueueElement.m
//
//  Created by Jeff Styles on 3/10/14.
//  Copyright (c) 2014 Jeff Trespalacios. All rights reserved.
//

#import "INDTwiMLEnqueueElement.h"

static NSString* const kTagName = @"Enqueue";

static NSString* const kDefaultWaitUrl = @"http://s3.amazonaws.com/com.twilio.sounds.music/index.xml";

static NSString* const kActionKey = @"action";
static NSString* const kWaitUrlKey = @"waitUrl";
static NSString* const kMethodKey = @"method";
static NSString* const kWaitUrlMethodKey = @"waitUrlMethod";

@implementation INDTwiMLEnqueueElement

- (instancetype)init
{
    self = [super initWithTagName:kTagName];

    if (self) {
        _method = TwiMLHTTPMethodPOST;
        _waitUrl = kDefaultWaitUrl;
        _waitUrlMethod = TwiMLHTTPMethodPOST;
    }

    return self;
}

- (NSDictionary*)attributes
{
    NSMutableDictionary* dict = [NSMutableDictionary new];
    if (_action) {
        dict[kActionKey] = _action;
    }
    dict[kMethodKey] = [self methodString:_method];
    dict[kWaitUrlKey] = _waitUrl;
    dict[kWaitUrlMethodKey] = [self methodString:_waitUrlMethod];

    return [dict copy];
}

- (NSString*)methodString:(TwiMLHTTPMethod)method
{
    switch (method) {
    case TwiMLHTTPMethodPOST:
        return @"POST";
        break;
    case TwiMLHTTPMethodGET:
        return @"GET";
        break;
    }
}
@end
