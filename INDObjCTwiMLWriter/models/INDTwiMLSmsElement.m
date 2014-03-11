//
//  INDTwiMLSmsElement.m
//  INDObjCTwiMLWriter
//
//  Created by Jeffrey Styles on 3/10/14.
//  Copyright (c) 2014 Indatus. All rights reserved.
//

#import "INDTwiMLSmsElement.h"

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
        dict[@"to"] = _toPhoneNumber;
    }

    if (_fromPhoneNumber) {
        dict[@"from"] = _fromPhoneNumber;
    }

    if (_action) {
        dict[@"action"] = _action;
    }

    if (_method) {
        dict[@"method"] = [self methodString];
    }

    if (_statusCallback) {
        dict[@"statusCallback"] = _statusCallback;
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
    default:
        return @"POST";
        break;
    }
}
@end
