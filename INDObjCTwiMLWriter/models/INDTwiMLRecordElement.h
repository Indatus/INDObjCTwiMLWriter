//
//  INDTwiMLRecordElement.h
//
//  Created by Jeff Styles on 3/10/14.
//  Copyright (c) 2014 Jeff Trespalacios. All rights reserved.
//

#import "INDTwiMLElement.h"

typedef NS_ENUM(NSInteger, TwiMLHTTPMethod) {
    TwiMLHTTPMethodPOST,
    TwiMLHTTPMethodGET
};

@interface INDTwiMLRecordElement : INDTwiMLElement

@property (nonatomic) NSString* action;
@property (nonatomic) TwiMLHTTPMethod method;
@property (nonatomic) NSUInteger timeout;
@property (nonatomic) NSString* finishOnKey;
@property (nonatomic) NSUInteger maxLength;
@property (nonatomic) BOOL transcribe;
@property (nonatomic) NSString* transcribeCallback;
@property (nonatomic) BOOL playBeep;
@end
