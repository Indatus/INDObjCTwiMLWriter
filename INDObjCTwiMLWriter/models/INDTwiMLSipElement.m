//
//  INDTwiMLSipElement.m
//  INDObjCTwiMLWriter
//
//  Created by Jeff Trespalacios on 3/11/14.
//  Copyright (c) 2014 Indatus. All rights reserved.
//

#import "INDTwiMLSipElement.h"

static NSString* const kTagName = @"Sip";

@implementation INDTwiMLSipElement

- (instancetype)init
{
    self = [super initWithTagName:kTagName];
    if (self) {
    }

    return self;
}

@end
