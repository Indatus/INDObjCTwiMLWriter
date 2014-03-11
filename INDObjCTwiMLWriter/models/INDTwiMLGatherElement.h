//
//  INDTwiMLGatherElement.h
//
//  Created by Jeff Styles on 3/10/14.
//  Copyright (c) 2014 Jeff Trespalacios. All rights reserved.
//

#import "INDTwiMLNestableElement.h"
#import "INDTwiMLConstants.h"

@interface INDTwiMLGatherElement : INDTwiMLNestableElement

@property (nonatomic) NSString* action;
@property (nonatomic) TwiMLHTTPMethod method;
@property (nonatomic) NSUInteger timeout;
@property (nonatomic) NSString* finishOnKey;
@property (nonatomic) NSUInteger numDigits;

@end
