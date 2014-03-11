//
//  INDTwiMLRejectElement.m
//
//  Created by Jeff Styles on 3/10/14.
//  Copyright (c) 2014 Jeff Trespalacios. All rights reserved.
//

#import "INDTwiMLRejectElement.h"

static NSString* const kTagName = @"Reject";

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
        @"reason" : [self reasonString]
    };
}

- (NSString*)reasonString
{
    switch (_reason) {
    case TwiMLRejectReasonBusy:
        return @"busy";
        break;
    case TwiMLRejectReasonRejected:
        return @"rejected";
    default:
        return @"rejected";
        break;
    }
}

@end
