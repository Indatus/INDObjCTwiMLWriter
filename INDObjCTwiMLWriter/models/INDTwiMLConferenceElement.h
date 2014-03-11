//
//  INDTwiMLConferenceElement.h
//  INDObjCTwiMLWriter
//
//  Created by Jeff Trespalacios on 3/11/14.
//  Copyright (c) 2014 Indatus. All rights reserved.
//

#import "INDTwiMLElementWithValue.h"

typedef NS_ENUM(NSInteger, TwiMLHTTPMethod) {
    TwiMLHTTPMethodPOST,
    TwiMLHTTPMethodGET
};

typedef NS_ENUM(NSInteger, TwiMLBeepOption) {
    TwiMLBeepOptionTrue,
    TwiMLBeepOptionFasle,
    TwiMLBeepOptionOnEnter,
    TwiMLBeepOptionOnExit
};

@interface INDTwiMLConferenceElement : INDTwiMLElementWithValue

@property (nonatomic) BOOL muted;
@property (nonatomic) TwiMLBeepOption beep;
@property (nonatomic) BOOL startConferenceOnEnter;
@property (nonatomic) BOOL endConferenceOnExit;
@property (nonatomic) NSString* waitUrl;
@property (nonatomic) TwiMLHTTPMethod waitMethod;
@property (nonatomic) NSUInteger maxParticipants;
@end
