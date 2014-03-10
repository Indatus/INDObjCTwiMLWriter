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
    return [self xmlStringForTag:self.tagName
                  withAttributes:@{
                      @"url" : _url,
                      @"method" : [self methodString]
                  }
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
