//
//  INDTwiMLRedirectElement.h
//  Airbreak
//
//  Created by Jeff Trespalacios on 3/10/14.
//  Copyright (c) 2014 Jeff Trespalacios. All rights reserved.
//

#import "INDTwiMLElement.h"

typedef NS_ENUM(NSInteger, TwiMLHTTPMethod) {
    TwiMLHTTPMethodPOST,
    TwiMLHTTPMethodGET
};

@interface INDTwiMLRedirectElement : INDTwiMLElement

@property (nonatomic) TwiMLHTTPMethod method;

@end
