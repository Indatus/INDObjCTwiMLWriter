//
//  INDTwiMLWritter.h
//  Airbreak
//
//  Created by Jeff Trespalacios on 3/5/14.
//  Copyright (c) 2014 Jeff Trespalacios. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface INDTwiMLWritter : NSObject

+ (NSData*)xmlDataElement:(NSArray*)elements usingEncoding:(NSStringEncoding)encoding;
+ (NSString*)xmlForElements:(NSArray*)elements;

@end
