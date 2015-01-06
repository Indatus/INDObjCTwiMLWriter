//
//  INDTwiMLBaseElement.h
//  INDObjCTwiMLWriter
//
//  Created by Jeff Trespalacios on 3/18/14.
//  Copyright (c) 2014 Indatus. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface INDTwiMLBaseElement : NSObject

@property (nonatomic, copy, readonly) NSString* tagName;

- (instancetype)initWithTagName:(NSString*)tagName;

@end
