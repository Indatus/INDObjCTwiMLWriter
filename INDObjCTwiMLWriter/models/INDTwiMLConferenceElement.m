//
//  INDTwiMLConferenceElement.m
//  INDObjCTwiMLWriter
//
//  Created by Jeff Trespalacios on 3/11/14.
//  Copyright (c) 2014 Indatus. All rights reserved.
//

#import "INDTwiMLConferenceElement.h"

static NSString* const kTagName = @"Conference";

@implementation INDTwiMLConferenceElement

- (id)init
{
    self = [super initWithTagName:kTagName];
    if (self) {
    }

    return self;
}
@end
