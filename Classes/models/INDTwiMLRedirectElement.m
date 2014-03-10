//
//  INDTwiMLRedirectElement.m
//  Airbreak
//
//  Created by Jeff Trespalacios on 3/10/14.
//  Copyright (c) 2014 Jeff Trespalacios. All rights reserved.
//

#import "INDTwiMLRedirectElement.h"

@implementation INDTwiMLRedirectElement

- (instancetype)initWithTagName:(NSString*)tagName andValue:(NSString*)value
{
    self = [super initWithTagName:tagName
                         andValue:value];

    if (self) {
        _method = TwiMLHTTPMethodPOST;
    }

    return self;
}

-(NSString *)xmlString
{
    return [self xmlStringForTag:self.tagName withAttributes:@{@"method": [self methodString]} andValue:self.value];
}

-(NSString *)methodString
{
    switch (_method){
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
