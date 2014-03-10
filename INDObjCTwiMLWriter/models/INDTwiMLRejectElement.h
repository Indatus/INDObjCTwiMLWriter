//
//  INDTwiMLRejectElement.h
//
//  Created by Jeff Styles on 3/10/14.
//  Copyright (c) 2014 Jeff Trespalacios. All rights reserved.
//

#import "INDTwiMLElement.h"

typedef NS_ENUM(NSInteger, TwiMLRejectReason) {
    TwiMLRejectReasonRejected,
    TwiMLRejectReasonBusy
};

@interface INDTwiMLRejectElement : INDTwiMLElement

@property (nonatomic) TwiMLRejectReason reason;

@end
