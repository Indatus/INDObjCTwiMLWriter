//
//  INDTwiMLFactory.h
//  Airbreak
//
//  Created by Jeff Trespalacios on 3/10/14.
//  Copyright (c) 2014 Jeff Trespalacios. All rights reserved.
//

#import <Foundation/Foundation.h>

@class INDTwiMLElement;

typedef NS_ENUM(NSUInteger, INDTwiMLElementType) {
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

+ (INDTwiMLElement*)generateElementOfClass:(INDTwiMLElementType)type;

@end
