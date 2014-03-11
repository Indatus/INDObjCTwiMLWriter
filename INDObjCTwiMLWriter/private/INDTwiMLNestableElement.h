//
//  INDTwiMLNestableElement.h
//  INDObjCTwiMLWriter
//
//  Created by Jeff Trespalacios on 3/10/14.
//  Copyright (c) 2014 Indatus. All rights reserved.
//

#import "INDTwiMLElement.h"

@interface INDTwiMLNestableElement : INDTwiMLElement

- (void)addChildElement:(INDTwiMLElement*)child;
- (void)removeChildElement:(INDTwiMLElement*)child;
- (NSArray*)children;

@end
