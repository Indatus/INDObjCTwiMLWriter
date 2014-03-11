//
//  INDTwiMLHangupElement.m
//
//  Created by Jeff Styles on 3/10/14.
//  Copyright (c) 2014 Jeff Trespalacios. All rights reserved.
//

#import "INDTwiMLHangupElement.h"

static NSString* const kTagName = @"Hangup";

@implementation INDTwiMLHangupElement

- (instancetype)init
{
    return [super initWithTagName:kTagName];
}

- (NSDictionary*)attributes
{
    return nil;
}

@end
