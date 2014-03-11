//
//  INDTwiMLFactory.m
//  Airbreak
//
//  Created by Jeff Trespalacios on 3/10/14.
//  Copyright (c) 2014 Jeff Trespalacios. All rights reserved.
//

#import "INDTwiMLFactory.h"
#import "INDTwiMLElement.h"
#import "INDTwiMLClientElement.h"
#import "INDTwiMLConferenceElement.h"
#import "INDTwiMLDialElement.h"
#import "INDTwiMLEnqueueElement.h"
#import "INDTwiMLGatherElement.h"
#import "INDTwiMLHangupElement.h"
#import "INDTwiMLLeaveElement.h"
#import "INDTwiMLNestedDialElement.h"
#import "INDTwiMLNumberElement.h"
#import "INDTwiMLPauseElement.h"
#import "INDTwiMLPlayElement.h"
#import "INDTwiMLQueueElement.h"
#import "INDTwiMLRecordElement.h"
#import "INDTwiMLRedirectElement.h"
#import "INDTwiMLRejectElement.h"
#import "INDTwiMLSayElement.h"
#import "INDTwiMLSipElement.h"
#import "INDTwiMLSmsElement.h"

@implementation INDTwiMLFactory

+ (INDTwiMLElement*)generateElementOfClass:(INDTwiMLElementType)type
{
    INDTwiMLElement* element;
    switch (type) {
    case INDTwiMLClienetElementType:
        element = [[INDTwiMLClientElement alloc] init];
        break;
    case INDTwiMLConferenceElementType:
        element = [[INDTwiMLConferenceElement alloc] init];
        break;
    case INDTwiMLDialElementType:
        element = [[INDTwiMLDialElement alloc] init];
        break;
    case INDTwiMLEnqueueElementType:
        element = [[INDTwiMLEnqueueElement alloc] init];
        break;
    case INDTwiMLGatherElementType:
        element = [[INDTwiMLGatherElement alloc] init];
        break;
    case INDTwiMLHangupElementType:
        element = [[INDTwiMLHangupElement alloc] init];
        break;
    case INDTwiMLLeaveElementType:
        element = [[INDTwiMLLeaveElement alloc] init];
        break;
    case INDTwiMLNestedDialElementType:
        element = [[INDTwiMLNestedDialElement alloc] init];
        break;
    case INDTwiMLNumberElementType:
        element = [[INDTwiMLNumberElement alloc] init];
        break;
    case INDTwiMLPauseElementType:
        element = [[INDTwiMLPauseElement alloc] init];
        break;
    case INDTwiMLPlayElementType:
        element = [[INDTwiMLPlayElement alloc] init];
        break;
    case INDTwiMLQueueElementType:
        element = [[INDTwiMLQueueElement alloc] init];
        break;
    case INDTwiMLRecordElementType:
        element = [[INDTwiMLRecordElement alloc] init];
        break;
    case INDTwiMLRedirectElementType:
        element = [[INDTwiMLRedirectElement alloc] init];
        break;
    case INDTwiMLRejectElementType:
        element = [[INDTwiMLRejectElement alloc] init];
        break;
    case INDTwiMLSayElementType:
        element = [[INDTwiMLSayElement alloc] init];
        break;
    case INDTwiMLSipElementType:
        element = [[INDTwiMLSipElement alloc] init];
        break;
    case INDTwiMLSmsElementType:
        element = [[INDTwiMLSmsElement alloc] init];
        break;
    }

    return element;
}

@end
