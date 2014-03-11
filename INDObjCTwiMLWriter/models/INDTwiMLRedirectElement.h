//
//  INDTwiMLRedirectElement.h
//  Airbreak
//
//  Created by Jeff Trespalacios on 3/10/14.
//  Copyright (c) 2014 Jeff Trespalacios. All rights reserved.
//

#import "INDTwiMLElementWithValue.h"
#import "INDTwiMLConstants.h"

@interface INDTwiMLRedirectElement : INDTwiMLElementWithValue

@property (nonatomic) TwiMLHTTPMethod method;

@end
