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

@property (nonatomic) TwiMLHTTPMethod method;
@property (nonatomic) NSString* url;

@end
