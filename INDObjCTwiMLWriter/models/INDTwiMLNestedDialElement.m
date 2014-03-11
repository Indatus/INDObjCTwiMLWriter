//
//  INDTwiMLNestedDialElement.m
//  INDObjCTwiMLWriter
//
//  Created by Jeff Trespalacios on 3/11/14.
//  Copyright (c) 2014 Indatus. All rights reserved.
//

#import "INDTwiMLNestedDialElement.h"

static NSString* const kTagName = @"Dial";

@implementation INDTwiMLNestedDialElement

- (instancetype)init
{
    self = [super initWithTagName:kTagName];
    if (self) {
    }

    return self;
}

@end
