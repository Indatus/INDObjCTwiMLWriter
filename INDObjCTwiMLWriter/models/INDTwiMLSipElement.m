//
//  INDTwiMLSipElement.m
//  INDObjCTwiMLWriter
//
//  Created by Jeff Trespalacios on 3/11/14.
//  Copyright (c) 2014 Indatus. All rights reserved.
//

#import "INDTwiMLSipElement.h"

static NSString* const kTagName = @"Sip";

static NSString* const kUsernameKey = @"username";
static NSString* const kPasswordKey = @"password";

@implementation INDTwiMLSipElement

- (instancetype)init
{
    self = [super initWithTagName:kTagName];
    if (self) {
    }

    return self;
}

- (NSDictionary*)attributes
{
    NSMutableDictionary* dict = [NSMutableDictionary new];
    if (_username) {
        dict[kUsernameKey] = _username;
    }
    if (_password) {
        dict[kPasswordKey] = _password;
    }

    return [dict copy];
}

@end
