//
//  INDTwiMLRecordElement.m
//
//  Created by Jeff Styles on 3/10/14.
//  Copyright (c) 2014 Jeff Trespalacios. All rights reserved.
//

#import "INDTwiMLRecordElement.h"

static NSString* const kActionKey = @"action";
static NSString* const kMethodKey = @"method";
static NSString* const kTimeoutKey = @"timeout";
static NSString* const kFinishOnKeyKey = @"finishOnKey";
static NSString* const kMaxLengthKey = @"maxLength";
static NSString* const kTranscribeKey = @"transcribe";
static NSString* const kTranscribeCallbackKey = @"transcribeCallback";
static NSString* const kPlayBeepKey = @"playBeep";

static NSString* const kDefaultFinishOnKeyValue = @"123456789*#";

@implementation INDTwiMLRecordElement

static NSString* const kTagName = @"Record";

- (instancetype)init
{
    self = [super initWithTagName:kTagName];

    if (self) {
        _method = TwiMLHTTPMethodPOST;
        _timeout = 5;
        _finishOnKey = kDefaultFinishOnKeyValue;
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
        dict[kActionKey] = _action;
    }

    dict[kMethodKey] = [self methodString];
    dict[kTimeoutKey] = [NSString stringWithFormat:@"%lu", (unsigned long)_timeout];
    dict[kFinishOnKeyKey] = _finishOnKey;
    dict[kMaxLengthKey] = [NSString stringWithFormat:@"%lu", (unsigned long)_maxLength];
    dict[kTranscribeKey] = [self transcribeString];

    if (_transcribeCallback) {
        dict[kTranscribeCallbackKey] = _transcribeCallback;
    }

    dict[kPlayBeepKey] = [self playBeepString];

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
    if (_transcribe) {
        return @"true";
    }
    else {
        return @"false";
    }
}

- (NSString*)playBeepString
{
    if (_playBeep) {
        return @"true";
    }
    else {
        return @"false";
    }
}
@end
