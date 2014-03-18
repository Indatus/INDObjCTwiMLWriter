//
//  INDTwiMLNestedDialElement.m
//  INDObjCTwiMLWriter
//
//  Created by Jeff Trespalacios on 3/11/14.
//  Copyright (c) 2014 Indatus. All rights reserved.
//

#import "INDTwiMLNestedDialElement.h"

static NSString* const kTagName = @"Dial";
static NSString* const kActionKey = @"action";
static NSString* const kMethodKey = @"method";
static NSString* const kTimeoutKey = @"timeout";
static NSString* const kHangUpOnStarKey = @"hangUpOnStar";
static NSString* const kTimeLimitKey = @"timeLimit";
static NSString* const kCallerIdKey = @"callerId";
static NSString* const kRecordKey = @"record";

@implementation INDTwiMLNestedDialElement

- (instancetype)init
{
    self = [super initWithTagName:kTagName];
    if (self) {
        _method = TwiMLHTTPMethodPOST;
        _timeout = 30;
        _hangupOnStar = NO;
        _timeLimit = 14400;
        _record = NO;
    }

    return self;
}

- (NSDictionary*)attributes
{
    NSMutableDictionary* dict = [NSMutableDictionary new];
    if (_action) {
        dict[kActionKey] = _action;
    }

    dict[kMethodKey] = [self methodString];
    dict[kTimeoutKey] = [NSString stringWithFormat:@"%lud", (unsigned long)_timeout];
    dict[kHangUpOnStarKey] = [self boolToString:_hangupOnStar];
    dict[kTimeLimitKey] = [NSString stringWithFormat:@"%lud", (unsigned long)_timeLimit];

    if (_callerId) {
        dict[kCallerIdKey] = _callerId;
    }

    dict[kRecordKey] = [self boolToString:_record];

    return [dict copy];
}

#pragma mark - Private
- (NSString*)methodString
{
    switch (_method) {
    case TwiMLHTTPMethodGET:
        return @"GET";
        break;
    case TwiMLHTTPMethodPOST:
        return @"POST";
        break;
    default:
        return @"POST";
        break;
    }
}

- (NSString*)boolToString:(BOOL)caseBool
{
    if (caseBool) {
        return @"true";   
    }
    else {
        return @"false";
    }
}

@end
