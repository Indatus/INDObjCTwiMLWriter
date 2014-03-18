//
//  INDTwiMLNumberElement.m
//  INDObjCTwiMLWriter
//
//  Created by Jeff Trespalacios on 3/11/14.
//  Copyright (c) 2014 Indatus. All rights reserved.
//

#import "INDTwiMLNumberElement.h"

static NSString* const kTagName = @"Number";
static NSString* const kSendDigitsKey = @"sendDigits";
static NSString* const kUrlKey = @"url";
static NSString* const kMethodKey = @"method";

@implementation INDTwiMLNumberElement

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
    if (_sendDigits) {
        dict[kSendDigitsKey] = _sendDigits;
    }
    if (_url) {
        dict[kUrlKey] = _url;
    }
    dict[kMethodKey] = [self methodString];

    return dict;
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
