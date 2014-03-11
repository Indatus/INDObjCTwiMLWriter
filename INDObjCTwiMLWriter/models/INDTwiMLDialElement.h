//
//  INDTwiMLDialElement.h
//
//  Created by Jeff Styles on 3/10/14.
//  Copyright (c) 2014 Jeff Trespalacios. All rights reserved.
//

#import "INDTwiMLElementWithValue.h"
#import "INDTwiMLConstants.h"

@interface INDTwiMLDialElement : INDTwiMLElementWithValue

@property (nonatomic) NSString* action;
@property (nonatomic) TwiMLHTTPMethod method;
@property (nonatomic) NSUInteger timeout;
@property (nonatomic) BOOL hangupOnStar;
@property (nonatomic) NSUInteger timeLimit;
@property (nonatomic) NSString* callerId;
@property (nonatomic) BOOL record;
@end
