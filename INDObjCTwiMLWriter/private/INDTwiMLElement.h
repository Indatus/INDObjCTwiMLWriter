//
//  INDTwiMLBaseElement.h
//  Airbreak
//
//  Created by Jeff Trespalacios on 3/10/14.
//  Copyright (c) 2014 Jeff Trespalacios. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface INDTwiMLElement : NSObject

@property (nonatomic, copy, readonly) NSString* tagName;
@property (nonatomic, copy) NSString* value;

- (instancetype)initWithTagName:(NSString*)tagName andValue:(NSString*)value;

- (NSString*)xmlString;
- (NSString*)xmlStringForTag:(NSString *)tag withAttributes:(NSDictionary *)attributes andValue:(NSString*)value;

@end
