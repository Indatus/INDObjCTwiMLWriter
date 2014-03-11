//
//  INDTwiMLPauseElement.m
//
//  Created by Jeff Styles on 3/10/14.
//  Copyright (c) 2014 Jeff Trespalacios. All rights reserved.
//

#import "INDTwiMLPauseElement.h"

static NSString * const kLENGTHKEY = @"length";

@implementation INDTwiMLPauseElement

- (instancetype)initWithTagName:(NSString*)tagName
{
    self = [super initWithTagName:tagName];

    if (self) {
        _pauseLength = 1;
    }

    return self;
}

- (NSDictionary*)attributes
{
    NSMutableDictionary* dict = [NSMutableDictionary new];
    dict[kLENGTHKEY] = [NSString stringWithFormat:@"%lud", (unsigned long)_pauseLength];

    return [dict copy];
}
@end
