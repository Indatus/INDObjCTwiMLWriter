//
//  INDTwiMLWritter.m
//  Airbreak
//
//  Created by Jeff Trespalacios on 3/5/14.
//  Copyright (c) 2014 Jeff Trespalacios. All rights reserved.
//

#import "INDTwiMLWritter.h"
#import "INDTwiMLElement.h"

static NSString* const kAttributeKey = @"kAttributeKey";
static NSString* const kValueKey = @"kValueKey";

@implementation INDTwiMLWritter

+ (NSString*)xmlForElements:(NSArray*)elements
{

    NSMutableString* xml = [self beginTwiMLDocument];
    for (INDTwiMLElement* element in elements) {
        [xml appendString:[element xmlString]];
    }

    return [self endTwiMLDocument:xml];
}

+ (NSData*)xmlDataElement:(NSArray*)elements usingEncoding:(NSStringEncoding)encoding
{
    return [[self xmlForElements:elements] dataUsingEncoding:encoding];
}

+ (NSDictionary*)dictionaryForKey:(NSString*)key withData:(NSDictionary*)data andValue:(NSString*)value
{
    return
        @{
           key : @{
               kAttributeKey : data,
               kValueKey : value
           }
        };
}

#pragma mark - Private

+ (NSMutableString*)beginTwiMLDocument
{
    return [NSMutableString stringWithString:@"<?xml version=\"1.0\" encoding=\"UTF-8\"?><Response>"];
}

+ (void)appendParam:(NSString*)value forKey:(NSString*)key toDocument:(NSMutableString*)document
{
    [document appendFormat:@"<%@>%@</%@>", key, value, key];
}

+ (NSString*)endTwiMLDocument:(NSMutableString*)document
{
    return [document stringByAppendingString:@"</Response>"];
}

@end
