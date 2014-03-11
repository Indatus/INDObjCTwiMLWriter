//
//  INDTwiMLGatherElement.m
//
//  Created by Jeff Styles on 3/10/14.
//  Copyright (c) 2014 Jeff Trespalacios. All rights reserved.
//

#import "INDTwiMLGatherElement.h"

static NSString* const kTagName = @"Gather";

@implementation INDTwiMLGatherElement

- (instancetype)init
{
    self = [super initWithTagName:kTagName];

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
        dict[@"action"] = _action;
    }

    if (_numDigits) {
        dict[@"numDigits"] = [NSString stringWithFormat:@"%lud", (unsigned long)_numDigits];
    }

    return [dict copy];
}

@end
