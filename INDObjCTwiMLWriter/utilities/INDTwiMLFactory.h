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
    INDTwiMLClienetElementType,
    INDTwiMLConferenceElementType,
    INDTwiMLDialElementType,
    INDTwiMLEnqueueElementType,
    INDTwiMLGatherElementType,
    INDTwiMLHangupElementType,
    INDTwiMLLeaveElementType,
    INDTwiMLNestedDialElementType,
    INDTwiMLNumberElementType,
    INDTwiMLPauseElementType,
    INDTwiMLPlayElementType,
    INDTwiMLQueueElementType,
    INDTwiMLRecordElementType,
    INDTwiMLRedirectElementType,
    INDTwiMLRejectElementType,
    INDTwiMLSayElementType,
    INDTwiMLSipElementType,
    INDTwiMLSmsElementType
};

@interface INDTwiMLFactory : NSObject

+ (INDTwiMLElement*)generateElementOfClass:(INDTwiMLElementType)type;

@end
