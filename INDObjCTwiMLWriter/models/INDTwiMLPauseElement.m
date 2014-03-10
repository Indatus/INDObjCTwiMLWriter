//
//  INDTwiMLPauseElement.m
//
//  Created by Jeff Styles on 3/10/14.
//  Copyright (c) 2014 Jeff Trespalacios. All rights reserved.
//

#import "INDTwiMLPauseElement.h"

@implementation INDTwiMLPauseElement

- (instancetype)initWithTagName:(NSString*)tagName
{
    self = [super initWithTagName:tagName];

    if (self) {
        _pauseLength = 1;
    }

    return self;
}

- (NSString*)xmlString
{
    return [self xmlStringForTag:self.tagName
                  withAttributes:@{
                                    @"length" : [NSString stringWithFormat:@"%lud", (unsigned long)_pauseLength]
                                 }];
}
@end
