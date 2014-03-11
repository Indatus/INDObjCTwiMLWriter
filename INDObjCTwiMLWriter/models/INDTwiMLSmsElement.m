//
//  INDTwiMLSmsElement.m
//  INDObjCTwiMLWriter
//
//  Created by Jeffrey Styles on 3/10/14.
//  Copyright (c) 2014 Indatus. All rights reserved.
//

#import "INDTwiMLSmsElement.h"

static NSString* const kTOKEY = @"to";
static NSString* const kFROMKEY = @"from";
static NSString* const kACTIONKEY = @"action";
static NSString* const kMETHODKEY = @"method";
static NSString* const kSTATUSCALLBACKKEY = @"statusCallback";

@implementation INDTwiMLSmsElement

- (instancetype)initWithTagName:(NSString*)tagName andValue:(NSString*)value
{
    self = [super initWithTagName:tagName
                         andValue:value];

    if (self) {
        _method = TwiMLHTTPMethodPOST;
    }

    return self;
}

- (NSDictionary*)attributes
{
    NSMutableDictionary* dict = [NSMutableDictionary new];
    if (_toPhoneNumber) {
        dict[kTOKEY] = _toPhoneNumber;
    }

    if (_fromPhoneNumber) {
        dict[kFROMKEY] = _fromPhoneNumber;
    }

    if (_action) {
        dict[kACTIONKEY] = _action;
    }

    if (_method) {
        dict[kMETHODKEY] = [self methodString];
    }

    if (_statusCallback) {
        dict[kSTATUSCALLBACKKEY] = _statusCallback;
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
