//
//  INDTwiMLRecordElement.m
//
//  Created by Jeff Styles on 3/10/14.
//  Copyright (c) 2014 Jeff Trespalacios. All rights reserved.
//

#import "INDTwiMLRecordElement.h"

@implementation INDTwiMLRecordElement

- (instancetype)initWithTagName:(NSString*)tagName
{
    self = [super initWithTagName:tagName];

    if (self) {
        _method = TwiMLHTTPMethodPOST;
        _timeout = 5;
        _finishOnKey = @"123456789*#";
        _maxLength = 3600;
        _transcribe = NO;
        _playBeep = YES;
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
    dict[@"finishOnKey"] = _finishOnKey;
    dict[@"maxLength"] = [NSString stringWithFormat:@"%lud", (unsigned long)_maxLength];
    dict[@"transcribe"] = [self transcribeString];

    if (_transcribeCallback) {
        dict[@"transcribeCallback"] = _transcribeCallback;
    }

    dict[@"playBeep"] = [self playBeepString];

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

- (NSString*)transcribeString
{
    switch (_transcribe) {
    case NO:
        return @"false";
        break;

    case YES:
        return @"true";

    default:
        return @"false";
        break;
    }
}

- (NSString*)playBeepString
{
    switch (_playBeep) {
    case NO:
        return @"false";
        break;

    case YES:
        return @"true";

    default:
        return @"false";
        break;
    }
}
@end
