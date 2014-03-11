//
//  INDTwiMLNestedDialElement.m
//  INDObjCTwiMLWriter
//
//  Created by Jeff Trespalacios on 3/11/14.
//  Copyright (c) 2014 Indatus. All rights reserved.
//

#import "INDTwiMLNestedDialElement.h"

@implementation INDTwiMLNestedDialElement

- (instancetype)initWithTagName:(NSString*)tagName
{
    self = [super initWithTagName:tagName];
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
        dict[@"action"] = _action;
    }

    dict[@"method"] = [self methodString];
    dict[@"timeout"] = [NSString stringWithFormat:@"%lud", (unsigned long)_timeout];
    dict[@"hangupOnStar"] = [self boolToString:_hangupOnStar];
    dict[@"timeLimit"] = [NSString stringWithFormat:@"%lud", (unsigned long)_timeLimit];

    if (_callerId) {
        dict[@"caller_id"] = _callerId;
    }

    dict[@"record"] = [self boolToString:_record];

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
    switch (caseBool) {
    case NO:
        return @"false";
        break;
    case YES:
        return @"true";
        break;
    default:
        return @"false";
        break;
    }
}
@end
