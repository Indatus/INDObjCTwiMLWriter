//
//  INDTwiMLSipElement.h
//  INDObjCTwiMLWriter
//
//  Created by Jeff Trespalacios on 3/11/14.
//  Copyright (c) 2014 Indatus. All rights reserved.
//

#import "INDTwiMLElementWithValue.h"

@interface INDTwiMLSipElement : INDTwiMLElementWithValue

@property (nonatomic) NSString* username;
@property (nonatomic) NSString* password;
@end
