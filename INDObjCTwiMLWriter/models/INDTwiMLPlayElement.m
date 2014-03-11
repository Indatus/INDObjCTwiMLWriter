//
//  INDTwiMLPlayElement.m
//
//  Created by Jeff Styles on 3/10/14.
//  Copyright (c) 2014 Jeff Trespalacios. All rights reserved.
//

#import "INDTwiMLPlayElement.h"

const NSString* const kLOOPKEY = @"loop";
const NSString* const kDIGITSKEY = @"digits";

@implementation INDTwiMLPlayElement

static NSString* const kTagName = @"Play";

- (instancetype)init
{
    self = [super initWithTagName:kTagName];

    if (self) {
        _loop = 1;
    }

    return self;
}

- (NSDictionary*)attributes
{
    NSMutableDictionary* dict = [NSMutableDictionary new];
    dict[kLOOPKEY] = [NSString stringWithFormat:@"%lud", (unsigned long)_loop];
    if (_digits) {
        dict[kDIGITSKEY] = _digits;
    }

    return [dict copy];
}
@end
