//
//  INDTwiMLSmsElement.m
//  INDObjCTwiMLWriter
//
//  Created by Jeffrey Styles on 3/10/14.
//  Copyright (c) 2014 Indatus. All rights reserved.
//

#import "INDTwiMLSmsElement.h"


static NSString* const kTagName = @"Sms";

static NSString* const kToKey = @"to";
static NSString* const kFromKey = @"from";
static NSString* const kActionKey = @"action";
static NSString* const kMethodKey = @"method";
static NSString* const kStatusCallbackKey = @"statusCallback";


@implementation INDTwiMLSmsElement

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
    if (_toPhoneNumber) {
        dict[kToKey] = _toPhoneNumber;
    }

    if (_fromPhoneNumber) {
        dict[kFromKey] = _fromPhoneNumber;
    }

    if (_action) {
        dict[kActionKey] = _action;
    }

    if (_method) {
        dict[kMethodKey] = [self methodString];
    }

    if (_statusCallback) {
        dict[kStatusCallbackKey] = _statusCallback;
    }

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
    }
}
@end
