//
//  INDTwiMLEnqueueElement.m
//  Airbreak
//
//  Created by Jeff Trespalacios on 3/10/14.
//  Copyright (c) 2014 Jeff Trespalacios. All rights reserved.
//

#import "INDTwiMLEnqueueElement.h"

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

- (NSString*)xmlString
{
    NSMutableDictionary* dict = [NSMutableDictionary new];
    if (_url) {
        dict[@"url"] = _url;
    }

    dict[@"method"] = [self methodString];

    return [self xmlStringForTag:self.tagName
                  withAttributes:dict
                        andValue:self.value];
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
    default:
        return @"POST";
        break;
    }
}
@end
