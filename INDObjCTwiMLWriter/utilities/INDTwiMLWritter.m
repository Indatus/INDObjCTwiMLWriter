//
//  INDTwiMLWritter.m
//  Airbreak
//
//  Created by Jeff Trespalacios on 3/5/14.
//  Copyright (c) 2014 Jeff Trespalacios. All rights reserved.
//

#import "INDTwiMLWritter.h"

static NSString* const kAttributeKey = @"kAttributeKey";
static NSString* const kValueKey = @"kValueKey";

@implementation INDTwiMLWritter

+ (NSString*)xmlForKeys:(NSArray*)keys values:(NSArray*)values
{
    if (keys.count != values.count) {
        return nil;
    }

    NSMutableString* xml = [self beginTwiMLDocument];
    for (int i = 0; i < keys.count; i++) {
        NSString* key = keys[i];
        id value = values[i];

        if ([value isKindOfClass:[NSString class]]) {
            [self appendParam:value
                       forKey:key
                   toDocument:xml];
        } else if ([value isKindOfClass:[NSDictionary class]]) {
        }
    }

    return [self endTwiMLDocument:xml];
}

+ (NSData*)xmlDataForKeys:(NSArray*)keys values:(NSArray*)values;
{
    return [[self xmlForKeys:keys
                      values:values] dataUsingEncoding:NSUTF8StringEncoding];
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

+ (void)appendKey:(NSString*)key withData:(NSDictionary*)data toDocument:(NSMutableString*)document
{
    NSString* value = data[kValueKey];
    NSDictionary* attributes = data[kAttributeKey];
    
    
}

+ (NSString*)endTwiMLDocument:(NSMutableString*)document
{
    return [document stringByAppendingString:@"</Response>"];
}

@end
