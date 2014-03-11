//
//  INDTwiMLRecordElement.m
//
//  Created by Jeff Styles on 3/10/14.
//  Copyright (c) 2014 Jeff Trespalacios. All rights reserved.
//

#import "INDTwiMLRecordElement.h"

static NSString* const kACTIONKEY = @"action";
static NSString* const kMETHODKEY = @"method";
static NSString* const kTIMEOUTKEY = @"timeout";
static NSString* const kFINISHONKEY = @"finishOnKey";
static NSString* const kMAXLENGTHKEY = @"maxLength";
static NSString* const kTRANSCRIBEKEY = @"transcribe";
static NSString* const kTRANSCRIBECALLBACKKEY = @"transcribeCallback";
static NSString* const kPLAYBEEPKEY = @"playBeep";

static NSString* const kDEFAULTFINISHONKEYVALUE = @"123456789*#";

@implementation INDTwiMLRecordElement

- (instancetype)initWithTagName:(NSString*)tagName
{
    self = [super initWithTagName:tagName];

    if (self) {
        _method = TwiMLHTTPMethodPOST;
        _timeout = 5;
        _finishOnKey = kDEFAULTFINISHONKEYVALUE;
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
        dict[kACTIONKEY] = _action;
    }

    dict[kMETHODKEY] = [self methodString];
    dict[kTIMEOUTKEY] = [NSString stringWithFormat:@"%lud", (unsigned long)_timeout];
    dict[kFINISHONKEY] = _finishOnKey;
    dict[kMAXLENGTHKEY] = [NSString stringWithFormat:@"%lud", (unsigned long)_maxLength];
    dict[kTRANSCRIBEKEY] = [self transcribeString];

    if (_transcribeCallback) {
        dict[kTRANSCRIBECALLBACKKEY] = _transcribeCallback;
    }

    dict[kPLAYBEEPKEY] = [self playBeepString];

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
