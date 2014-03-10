//
//  INDTwiMLFactory.h
//  Airbreak
//
//  Created by Jeff Trespalacios on 3/10/14.
//  Copyright (c) 2014 Jeff Trespalacios. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "INDTwiMLElement.h"

typedef NS_ENUM(NSUInteger, TwiMLElementType) {
    TwiMLSayElement,
    TwiMLPlayElement,
    TwiMLGatherElement,
    TwiMLRecordElement,
    TwiMLDialElement,
    TwiMLEnqueueElement,
    TwiMLLeaveElement,
    TwiMLHangupElement,
    TwiMLRedirectElement,
    TwiMLRejectElement,
    TwiMLPauseElement
};

@interface INDTwiMLFactory : NSObject

+ (TwiMLElement*)generateElementOfClass:(TwiMLElementType)type;

@end
