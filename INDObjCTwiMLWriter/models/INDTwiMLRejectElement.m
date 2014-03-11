//
//  INDTwiMLRejectElement.m
//
//  Created by Jeff Styles on 3/10/14.
//  Copyright (c) 2014 Jeff Trespalacios. All rights reserved.
//

#import "INDTwiMLRejectElement.h"


static NSString* const kTagName = @"Reject";
static NSString* const kReasonKey = @"reason";

static NSString* const kReasonRejected = @"rejected";
static NSString* const kReasonBusy = @"busy";


@implementation INDTwiMLRejectElement

- (instancetype)init
{
    self = [super initWithTagName:kTagName];

    if (self) {
        _reason = TwiMLRejectReasonRejected;
    }

    return self;
}

- (NSDictionary*)attributes
{
    return @{
        kReasonKey : [self reasonString]
    };
}

- (NSString*)reasonString
{
    switch (_reason) {
    case TwiMLRejectReasonBusy:
        return kReasonBusy;
        break;
    case TwiMLRejectReasonRejected:
        return kReasonRejected;
    }
}

@end
