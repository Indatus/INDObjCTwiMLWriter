//
//  INDTwiMLEnqueueElement.m
//
//  Created by Jeff Styles on 3/10/14.
//  Copyright (c) 2014 Jeff Trespalacios. All rights reserved.
//

#import "INDTwiMLEnqueueElement.h"

static NSString * const kURLKEY = @"url";
static NSString * const kMETHODKEY = @"method";

@implementation INDTwiMLEnqueueElement

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
    if (_url) {
        dict[kURLKEY] = _url;
    }

    dict[kMETHODKEY] = [self methodString];

    return [dict copy];
}

- (NSString*)methodString
{
    switch (_method) {
    case TwiMLHTTPMethodPOST:
        return @"POST";
        break;
    case TwiMLHTTPMethodGET:
        return @"GET";
        break;
    }
}
@end
