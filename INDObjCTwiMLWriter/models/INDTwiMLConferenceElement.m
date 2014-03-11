//
//  INDTwiMLConferenceElement.m
//  INDObjCTwiMLWriter
//
//  Created by Jeff Styles on 3/11/14.
//  Copyright (c) 2014 Indatus. All rights reserved.
//

#import "INDTwiMLConferenceElement.h"

static NSString* const kMUTEDKEY = @"muted";
static NSString* const kBEEPKEY = @"beep";
static NSString* const kSTARTCONFERENCEONENTERKEY = @"startConferenceOnEnter";
static NSString* const kENDCONFERENCEONEXITKEY = @"endConferenceOnExit";
static NSString* const kWAITURLKEY = @"waitUrl";
static NSString* const kWAITMETHODKEY = @"waitMethod";
static NSString* const kMAXPARTICIPANTSKEY = @"maxParticipants";

@implementation INDTwiMLConferenceElement

- (instancetype)initWithTagName:(NSString*)tagName andValue:(NSString*)value
{
    self = [super initWithTagName:tagName
                         andValue:value];

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
    dict[kMUTEDKEY] = [self boolToString:_muted];
    dict[kBEEPKEY] = [self beepString];
    dict[kSTARTCONFERENCEONENTERKEY] = [self boolToString:_startConferenceOnEnter];
    dict[kENDCONFERENCEONEXITKEY] = [self boolToString:_endConferenceOnExit];
    if (_waitUrl) {
        dict[kWAITURLKEY] = _waitUrl;
    }
    dict[kWAITMETHODKEY] = [self methodString];
    dict[kMAXPARTICIPANTSKEY] = [NSString stringWithFormat:@"%lud", (unsigned long)_maxParticipants];

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
