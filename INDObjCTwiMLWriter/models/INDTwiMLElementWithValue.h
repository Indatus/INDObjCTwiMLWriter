//
//  INDTwiMLElementWithValue.h
//  INDObjCTwiMLWriter
//
//  Created by Jeff Trespalacios on 3/10/14.
//  Copyright (c) 2014 Indatus. All rights reserved.
//

#import "INDTwiMLElement.h"

@interface INDTwiMLElementWithValue : INDTwiMLElement

@property (nonatomic, copy) NSString* value;

- (NSString*)xmlStringForTag:(NSString*)tag withAttributes:(NSDictionary*)attributes andValue:(NSString*)value;

@end
