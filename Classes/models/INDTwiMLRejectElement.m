//
//  INDTwiMLRejectElement.m
//
//  Created by Jeff Styles on 3/10/14.
//  Copyright (c) 2014 Jeff Trespalacios. All rights reserved.
//

#import "INDTwiMLRejectElement.h"

@implementation INDTwiMLRejectElement

- (instancetype)initWithTagName:(NSString*)tagName andValue:(NSString*)value
{
    self = [super initWithTagName:tagName
                         andValue:value];

    if (self) {
        _reason = TwiMLRejectReasonRejected;
    }

    return self;
}

- (NSString*)xmlString
{
    return [self xmlStringForTag:self.tagName
                  withAttributes:@{
                      @"reason" : [self reasonString]
                  }
                        andValue:self.value];
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
