//
//  INDTwiMLNumberElement.h
//  INDObjCTwiMLWriter
//
//  Created by Jeff Trespalacios on 3/11/14.
//  Copyright (c) 2014 Indatus. All rights reserved.
//

#import "INDTwiMLElementWithValue.h"
#import "INDTwiMLConstants.h"

@interface INDTwiMLNumberElement : INDTwiMLElementWithValue

@property (nonatomic) NSString* sendDigits;
@property (nonatomic) NSString* url;
@property (nonatomic) TwiMLHTTPMethod method;
@end
