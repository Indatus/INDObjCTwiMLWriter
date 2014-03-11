//
//  INDTwiMLRejectElement.m
//
//  Created by Jeff Styles on 3/10/14.
//  Copyright (c) 2014 Jeff Trespalacios. All rights reserved.
//

#import "INDTwiMLRejectElement.h"

static NSString* const kREASONKEY = @"reason";

static NSString* const kREASONREJECTED = @"rejected";
static NSString* const kREASONBUSY = @"busy";

@implementation INDTwiMLRejectElement

- (instancetype)initWithTagName:(NSString*)tagName andValue:(NSString*)value
{
    self = [super initWithTagName:tagName];

    if (self) {
        _reason = TwiMLRejectReasonRejected;
    }

    return self;
}

- (NSDictionary*)attributes
{
    return @{
        kREASONKEY : [self reasonString]
    };
}

- (NSString*)reasonString
{
    switch (_reason) {
    case TwiMLRejectReasonBusy:
        return kREASONBUSY;
        break;
    case TwiMLRejectReasonRejected:
        return kREASONREJECTED;
    }
}

@end
