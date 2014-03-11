//
//  INDTwiMLClientElement.m
//  INDObjCTwiMLWriter
//
//  Created by Jeff Trespalacios on 3/11/14.
//  Copyright (c) 2014 Indatus. All rights reserved.
//

#import "INDTwiMLClientElement.h"

static NSString* const kTagName = @"Client";

@implementation INDTwiMLClientElement

- (instancetype)init
{
    self = [super initWithTagName:kTagName];
    if (self) {
        _method = TwiMLHTTPMethodPOST;
    }

    return self;
}

@end
