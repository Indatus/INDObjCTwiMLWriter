//
//  INDTwiMLNestableElement.m
//  INDObjCTwiMLWriter
//
//  Created by Jeff Trespalacios on 3/10/14.
//  Copyright (c) 2014 Indatus. All rights reserved.
//

#import "INDTwiMLNestableElement.h"

@implementation INDTwiMLNestableElement {
    NSMutableArray* _children;
}

- (instancetype)initWithTagName:(NSString*)tagName
{
    self = [super initWithTagName:tagName];
    if (self) {
        _children = [NSMutableArray new];
    }

    return self;
}

- (void)addChildElement:(INDTwiMLElement*)child
{
    if ([child isKindOfClass:[INDTwiMLElement class]]) {
        [_children addObject:child];
    }
}

- (void)removeChildElement:(INDTwiMLElement*)child
{
    if ([_children containsObject:child]) {
        [_children removeObject:child];
    }
}

- (NSArray*)children
{
    return [_children copy];
}

- (NSString*)xmlString
{
    NSMutableString* xml = [NSMutableString new];
    [xml appendFormat:@"<%@", self.tagName];
    if (self.attributes) {
        [xml appendString:[self attributeString]];
    }
    
    [xml appendString:@">"];
    

    for (INDTwiMLElement* element in _children) {
        [xml appendString:[element xmlString]];
    }
    [xml appendFormat:@"</%@>", self.tagName];

    return [xml copy];
}

@end
