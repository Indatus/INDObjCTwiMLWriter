//
//  INDTwiMLGatherElement.m
//
//  Created by Jeff Styles on 3/10/14.
//  Copyright (c) 2014 Jeff Trespalacios. All rights reserved.
//

#import "INDTwiMLGatherElement.h"

static NSString* const kTagName = @"Gather";
static NSString* const kActionKey = @"action";
static NSString* const kNumDigitsKey = @"numDigits";

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
        dict[kActionKey] = _action;
    }

    if (_numDigits) {
        dict[kNumDigitsKey] = [NSString stringWithFormat:@"%lu", (unsigned long)_numDigits];
    }

    return [dict copy];
}

@end
