//
//  INDTwiMLNestedDialElement.m
//  INDObjCTwiMLWriter
//
//  Created by Jeff Trespalacios on 3/11/14.
//  Copyright (c) 2014 Indatus. All rights reserved.
//

#import "INDTwiMLNestedDialElement.h"

static NSString* const kTagName = @"Dial";
static NSString* const kACTIONKEY = @"action";
static NSString* const kMETHODKEY = @"method";
static NSString* const kTIMEOUTKEY = @"timeout";
static NSString* const kHANGUPONSTARKEY = @"hangUpOnStar";
static NSString* const kTIMELIMITKEY = @"timeLimit";
static NSString* const kCALLERIDKEY = @"callerId";
static NSString* const kRECORDKEY = @"record";

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
        dict[kACTIONKEY] = _action;
    }

    dict[kMETHODKEY] = [self methodString];
    dict[kTIMEOUTKEY] = [NSString stringWithFormat:@"%lud", (unsigned long)_timeout];
    dict[kHANGUPONSTARKEY] = [self boolToString:_hangupOnStar];
    dict[kTIMELIMITKEY] = [NSString stringWithFormat:@"%lud", (unsigned long)_timeLimit];

    if (_callerId) {
        dict[kCALLERIDKEY] = _callerId;
    }

    dict[kRECORDKEY] = [self boolToString:_record];

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
