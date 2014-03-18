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
