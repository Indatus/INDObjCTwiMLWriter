//
//  INDTwiMLBaseElement.m
//  Airbreak
//
//  Created by Jeff Trespalacios on 3/10/14.
//  Copyright (c) 2014 Jeff Trespalacios. All rights reserved.
//

#import "INDTwiMLElement.h"

@implementation INDTwiMLElement

- (instancetype)initWithTagName:(NSString*)tagName
{
    self = [super init];
    if (self) {
        _tagName = [tagName copy];
    }

    return self;
}

- (NSString*)xmlString
{
    return nil;
}

- (NSString*)xmlStringForTag:(NSString*)tag withAttributes:(NSDictionary*)attributes
{
    NSMutableString* xmlString = [NSMutableString stringWithFormat:@"<%@", tag];

    if (attributes) {
        [attributes enumerateKeysAndObjectsUsingBlock:
                        ^(NSString* key, NSString* value, BOOL* stop) {
                            [xmlString appendFormat:@" %@='%@'", key, value];
                        }];
    }
    [xmlString appendString:@" />"];

    return [xmlString copy];
}

@end
