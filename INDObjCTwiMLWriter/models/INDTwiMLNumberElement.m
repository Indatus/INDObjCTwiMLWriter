//
//  INDTwiMLNumberElement.m
//  INDObjCTwiMLWriter
//
//  Created by Jeff Trespalacios on 3/11/14.
//  Copyright (c) 2014 Indatus. All rights reserved.
//

#import "INDTwiMLNumberElement.h"

static NSString* const kTagName = @"Number";

@implementation INDTwiMLNumberElement

- (instancetype)init
{
    self = [super initWithTagName:kTagName];
    if (self) {
    }

    return self;
}

@end
