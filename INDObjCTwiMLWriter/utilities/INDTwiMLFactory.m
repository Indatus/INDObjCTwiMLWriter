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
    case TwiMLSayElement:

        break;
    case TwiMLPlayElement:

        break;
    case TwiMLGatherElement:

        break;
    case TwiMLRecordElement:

        break;
    case TwiMLDialElement:

        break;
    case TwiMLEnqueueElement:

        break;
    case TwiMLLeaveElement:

        break;
    case TwiMLHangupElement:

        break;
    case TwiMLRedirectElement:

        break;
    case TwiMLRejectElement:

        break;
    case TwiMLPauseElement:

        break;
    }

    return element;
}

@end
