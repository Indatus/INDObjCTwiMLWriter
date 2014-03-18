//
//  INDTwiMLBaseElement.h
//  Airbreak
//
//  Created by Jeff Trespalacios on 3/10/14.
//  Copyright (c) 2014 Jeff Trespalacios. All rights reserved.
//

#import "INDTwiMLBaseElement.h"

@interface INDTwiMLElement : INDTwiMLBaseElement

- (NSString *)tagName;
- (NSString*)xmlString;
- (NSDictionary*)attributes;
- (NSString*)attributeString;
- (NSString*)xmlStringForTag:(NSString*)tag withAttributes:(NSDictionary*)attributes;

@end
