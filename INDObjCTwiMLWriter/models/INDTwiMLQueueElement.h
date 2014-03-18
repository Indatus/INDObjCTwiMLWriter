//
//  INDTwiMLQueueElement.h
//  INDObjCTwiMLWriter
//
//  Created by Jeff Trespalacios on 3/11/14.
//  Copyright (c) 2014 Indatus. All rights reserved.
//

#import "INDTwiMLElementWithValue.h"
#import "INDTwiMLConstants.h"

@interface INDTwiMLQueueElement : INDTwiMLElementWithValue

@property (nonatomic) TwiMLHTTPMethod method;
@property (nonatomic) NSString* url;

@end
