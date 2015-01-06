//
//  INDTwiMLBaseElement.m
//  INDObjCTwiMLWriter
//
//  Created by Jeff Trespalacios on 3/18/14.
//  Copyright (c) 2014 Indatus. All rights reserved.
//

#import "INDTwiMLBaseElement.h"

@implementation INDTwiMLBaseElement

- (instancetype)initWithTagName:(NSString*)tagName
{
    self = [super init];
    if (self) {
        _tagName = [tagName copy];
    }
    
    return self;
}

@end
