//
//  INDTwiMLWritter.h
//  Airbreak
//
//  Created by Jeff Trespalacios on 3/5/14.
//  Copyright (c) 2014 Jeff Trespalacios. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface INDTwiMLWritter : NSObject

+ (NSString*)xmlForKeys:(NSArray*)keys values:(NSArray*)values;
+ (NSData*)xmlDataForKeys:(NSArray*)keys values:(NSArray*)values;

+ (NSDictionary *)dictionaryForKey:(NSString *)key withData:(NSDictionary *)data andValue:(NSString *)value;

@end
