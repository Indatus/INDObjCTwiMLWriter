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

- (NSDictionary*)attributes
{
    return nil;
}

- (NSString*)attributeString
{
    NSDictionary* attributes = [self attributes];
    if (!attributes) {
        return nil;
    }

    return [self stringForAttributes:attributes];
}

- (NSString*)stringForAttributes:(NSDictionary*)attributes
{

    NSMutableString* attributeString = [NSMutableString new];
    [attributes enumerateKeysAndObjectsUsingBlock:
                    ^(NSString* key, NSString* value, BOOL* stop) {
                        [attributeString appendFormat:@" %@=\"%@\"", key, value];
                    }];

    return [attributeString copy];
}

- (NSString*)xmlStringForTag:(NSString*)tag withAttributes:(NSDictionary*)attributes
{
    NSMutableString* xmlString = [NSMutableString stringWithFormat:@"<%@", tag];

    if (attributes) {
        [xmlString appendFormat:@" %@", [self stringForAttributes:attributes]];
    }
    [xmlString appendString:@" />"];

    return [xmlString copy];
}

@end
