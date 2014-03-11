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
    INDTwiMLClienetElement,
    INDTwiMLConferenceElement,
    INDTwiMLDialElement,
    INDTwiMLEnqueueElement,
    INDTwiMLGatherElement,
    INDTwiMLHangupElement,
    INDTwiMLLeaveElement,
    INDTwiMLNestedDialElement,
    INDTwiMLNumberElement,
    INDTwiMLPauseElement,
    INDTwiMLPlayElement,
    INDTwiMLQueueElement,
    INDTwiMLRecordElement,
    INDTwiMLRedirectElement,
    INDTwiMLRejectElement,
    INDTwiMLSayElement,
    INDTwiMLSipElement,
    INDTwiMLSmsElement
};

@interface INDTwiMLFactory : NSObject

+ (INDTwiMLElement*)generateElementOfClass:(INDTwiMLElementType)type;

@end
