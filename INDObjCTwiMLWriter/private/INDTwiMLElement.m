//
//  INDTwiMLBaseElement.m
//  Airbreak
//
//  Created by Jeff Trespalacios on 3/10/14.
//  Copyright (c) 2014 Jeff Trespalacios. All rights reserved.
//

#import "INDTwiMLElement.h"

@implementation INDTwiMLElement

- (instancetype)initWithTagName:(NSString*)tagName andValue:(NSString*)value
{
    self = [super init];
    if (self) {
        _tagName = [tagName copy];
        _value = [value copy];
    }

    return self;
}

- (NSString*)xmlString
{
    return nil;
}

- (NSString*)xmlStringForTag:(NSString*)tag withAttributes:(NSDictionary*)attributes andValue:(NSString*)value
{
    NSMutableString* xmlString = [NSMutableString stringWithFormat:@"<%@", tag];

    if (attributes) {
        [attributes enumerateKeysAndObjectsUsingBlock:
                        ^(NSString* key, NSString* value, BOOL* stop) {
                            [xmlString appendFormat:@" %@='%@'", key, value];
                        }];
    }
    [xmlString appendFormat:@">%@<%@/>", value, tag];

    return [xmlString copy];
}

@end
