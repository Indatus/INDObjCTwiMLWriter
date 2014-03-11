//
//  INDTwiMLClientElement.h
//  INDObjCTwiMLWriter
//
//  Created by Jeff Trespalacios on 3/11/14.
//  Copyright (c) 2014 Indatus. All rights reserved.
//

#import "INDTwiMLElementWithValue.h"
#import "INDTwiMLConstants.h"

@interface INDTwiMLClientElement : INDTwiMLElementWithValue

@property (nonatomic, copy) NSString *url;
@property (nonatomic) TwiMLHTTPMethod method;

@end
