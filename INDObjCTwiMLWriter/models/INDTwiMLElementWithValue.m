//
//  INDTwiMLElementWithValue.m
//  INDObjCTwiMLWriter
//
//  Created by Jeff Trespalacios on 3/10/14.
//  Copyright (c) 2014 Indatus. All rights reserved.
//

#import "INDTwiMLElementWithValue.h"

@implementation INDTwiMLElementWithValue

- (id)initWithTagName:(NSString*)tagName
{
    self = [super initWithTagName:tagName];
    if (self) {
        _value = nil;
    }

    return self;
}

- (NSString *)xmlString
{
    return [self xmlStringForTag:self.tagName withAttributes:self.attributes andValue:self.value];
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
    if (value) {
        [xmlString appendFormat:@">%@</%@>", value, tag];
    }
    else {
        [xmlString appendString:@" />"];
    }

    return [xmlString copy];
}

@end
