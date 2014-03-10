//
//  INDTwiMLSmsElement.h
//  INDObjCTwiMLWriter
//
//  Created by Jeffrey Styles on 3/10/14.
//  Copyright (c) 2014 Indatus. All rights reserved.
//

#import "INDTwiMLElementWithValue.h"

typedef NS_ENUM(NSInteger, TwiMLHTTPMethod) {
    TwiMLHTTPMethodPOST,
    TwiMLHTTPMethodGET
};

@interface INDTwiMLSmsElement : INDTwiMLElementWithValue

@property (nonatomic) NSString *toPhoneNumber;
@property (nonatomic) NSString *fromPhoneNumber;
@property (nonatomic) NSString *action;
@property (nonatomic) TwiMLHTTPMethod method;
@property (nonatomic) NSString *statusCallback;

@end
