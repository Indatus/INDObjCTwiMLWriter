//
//  INDTwiMLEnqueueElement.h
//  Airbreak
//
//  Created by Jeff Styles on 3/10/14.
//  Copyright (c) 2014 Jeff Trespalacios. All rights reserved.
//

#import "INDTwiMLElementWithValue.h"
#import "INDTwiMLConstants.h"

@interface INDTwiMLEnqueueElement : INDTwiMLElementWithValue

@property (nonatomic) NSString* action;
@property (nonatomic) TwiMLHTTPMethod method;
@property (nonatomic) NSString* waitUrl;
@property (nonatomic) TwiMLHTTPMethod waitUrlMethod;

@end
