//
//  INDTwiMLPauseElement.m
//
//  Created by Jeff Styles on 3/10/14.
//  Copyright (c) 2014 Jeff Trespalacios. All rights reserved.
//

#import "INDTwiMLPauseElement.h"
static NSString* const kTagName = @"Pause";
static NSString * const kLengthKey = @"length";

@implementation INDTwiMLPauseElement

- (instancetype)init
{
    self = [super initWithTagName:kTagName];

    if (self) {
        _length = 1;
    }

    return self;
}

- (NSDictionary*)attributes
{
    NSMutableDictionary* dict = [NSMutableDictionary new];
    dict[kLengthKey] = [NSString stringWithFormat:@"%lu", (unsigned long)_length];

    return [dict copy];
}
@end
