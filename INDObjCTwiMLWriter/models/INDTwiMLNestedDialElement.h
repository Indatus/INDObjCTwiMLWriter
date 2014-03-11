//
//  INDTwiMLNestedDialElement.h
//  INDObjCTwiMLWriter
//
//  Created by Jeff Trespalacios on 3/11/14.
//  Copyright (c) 2014 Indatus. All rights reserved.
//

#import "INDTwiMLNestableElement.h"

typedef NS_ENUM(NSInteger, TwiMLHTTPMethod) {
    TwiMLHTTPMethodPOST,
    TwiMLHTTPMethodGET
};

@interface INDTwiMLNestedDialElement : INDTwiMLNestableElement

@property (nonatomic) NSString* action;
@property (nonatomic) TwiMLHTTPMethod method;
@property (nonatomic) NSUInteger timeout;
@property (nonatomic) BOOL hangupOnStar;
@property (nonatomic) NSUInteger timeLimit;
@property (nonatomic) NSString* callerId;
@property (nonatomic) BOOL record;
@end
