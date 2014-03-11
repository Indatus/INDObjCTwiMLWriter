//
//  INDTwiMLConferenceElement.m
//  INDObjCTwiMLWriter
//
//  Created by Jeff Styles on 3/11/14.
//  Copyright (c) 2014 Indatus. All rights reserved.
//

#import "INDTwiMLConferenceElement.h"

static NSString* const kTagName = @"Conference";
static NSString* const kMutedKey = @"muted";
static NSString* const kBeepKey = @"beep";
static NSString* const kStartConferenceOnEntryKey = @"startConferenceOnEnter";
static NSString* const kEndConferenceOnExitKey = @"endConferenceOnExit";
static NSString* const kWaitUrlKey = @"waitUrl";
static NSString* const kWaitMethodKey = @"waitMethod";
static NSString* const kMaxParticipantsKey = @"maxParticipants";

@implementation INDTwiMLConferenceElement

- (instancetype)init
{
    self = [super initWithTagName:kTagName];
    if (self) {
        _muted = NO;
        _beep = TwiMLBeepOptionTrue;
        _startConferenceOnEnter = YES;
        _endConferenceOnExit = NO;
        _waitMethod = TwiMLHTTPMethodPOST;
        _maxParticipants = 40;
    }

    return self;
}

- (NSDictionary*)attributes
{
    NSMutableDictionary* dict = [NSMutableDictionary new];
    dict[kMutedKey] = [self boolToString:_muted];
    dict[kBeepKey] = [self beepString];
    dict[kStartConferenceOnEntryKey] = [self boolToString:_startConferenceOnEnter];
    dict[kEndConferenceOnExitKey] = [self boolToString:_endConferenceOnExit];
    if (_waitUrl) {
        dict[kWaitUrlKey] = _waitUrl;
    }
    dict[kWaitMethodKey] = [self methodString];
    dict[kMaxParticipantsKey] = [NSString stringWithFormat:@"%lud", (unsigned long)_maxParticipants];

    return [dict copy];
}

#pragma mark - Private
- (NSString*)methodString
{
    switch (_waitMethod) {
    case TwiMLHTTPMethodGET:
        return @"GET";
        break;
    case TwiMLHTTPMethodPOST:
        return @"POST";
        break;
    }
}

- (NSString*)boolToString:(BOOL)caseBool
{
    if (caseBool) {
        return @"true";
    } else {
        return @"false";
    }
}

- (NSString*)beepString
{
    switch (_beep) {
    case TwiMLBeepOptionFasle:
        return @"false";
        break;
    case TwiMLBeepOptionTrue:
        return @"true";
    case TwiMLBeepOptionOnEnter:
        return @"onEnter";
    case TwiMLBeepOptionOnExit:
        return @"onExit";
    default:
        return @"true";
        break;
    }
}

@end
