//
//  INDTwiMLClientElement.m
//  INDObjCTwiMLWriter
//
//  Created by Jeff Trespalacios on 3/11/14.
//  Copyright (c) 2014 Indatus. All rights reserved.
//

#import "INDTwiMLClientElement.h"

static NSString* const kTagName = @"Client";

static NSString* const kUrlKey = @"url";
static NSString* const kMethodKey = @"method";

@implementation INDTwiMLClientElement

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
    if (_url) {
        dict[kUrlKey] = _url;
    }
    dict[kMethodKey] = [self methodString:_method];

    return [dict copy];
}

#pragma mark - Private
- (NSString*)methodString:(TwiMLHTTPMethod)method
{
    switch (method) {
    case TwiMLHTTPMethodPOST:
        return @"POST";
        break;
    case TwiMLHTTPMethodGET:
        return @"GET";
        break;
    }
}
@end
