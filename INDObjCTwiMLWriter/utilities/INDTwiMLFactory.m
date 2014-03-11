//
//  INDTwiMLFactory.m
//  Airbreak
//
//  Created by Jeff Trespalacios on 3/10/14.
//  Copyright (c) 2014 Jeff Trespalacios. All rights reserved.
//

#import "INDTwiMLFactory.h"
#import "INDTwiMLElement.h"

@implementation INDTwiMLFactory

+ (INDTwiMLElement*)generateElementOfClass:(INDTwiMLElementType)type
{
    INDTwiMLElement* element = nil;
    switch (type) {
    case INDTwiMLClienetElement:
        break;
    case INDTwiMLConferenceElement:
        break;
    case INDTwiMLDialElement:
        break;
    case INDTwiMLEnqueueElement:
        break;
    case INDTwiMLGatherElement:
        break;
    case INDTwiMLHangupElement:
        break;
    case INDTwiMLLeaveElement:
        break;
    case INDTwiMLNestedDialElement:
        break;
    case INDTwiMLNumberElement:
        break;
    case INDTwiMLPauseElement:
        break;
    case INDTwiMLPlayElement:
        break;
    case INDTwiMLQueueElement:
        break;
    case INDTwiMLRecordElement:
        break;
    case INDTwiMLRedirectElement:
        break;
    case INDTwiMLRejectElement:
        break;
    case INDTwiMLSayElement:
        break;
    case INDTwiMLSipElement:
        break;
    case INDTwiMLSmsElement:
        break;
    }

    return element;
}

@end
