//
//  INDTwiMLGatherElement.m
//
//  Created by Jeff Styles on 3/10/14.
//  Copyright (c) 2014 Jeff Trespalacios. All rights reserved.
//

#import "INDTwiMLGatherElement.h"

static NSString* const kACTIONKEY = @"action";
static NSString* const kNUMDIGITSKEY = @"numDigits";

@implementation INDTwiMLGatherElement

- (instancetype)initWithTagName:(NSString*)tagName
{
    self = [super initWithTagName:tagName];

    if (self) {
        _method = TwiMLHTTPMethodPOST;
        _timeout = 5;
        _finishOnKey = @"#";
    }

    return self;
}

- (NSDictionary*)attributes
{
    NSMutableDictionary* dict = [NSMutableDictionary new];
    if (_action) {
        dict[kACTIONKEY] = _action;
    }

    if (_numDigits) {
        dict[kNUMDIGITSKEY] = [NSString stringWithFormat:@"%lud", (unsigned long)_numDigits];
    }

    return [dict copy];
}

@end
