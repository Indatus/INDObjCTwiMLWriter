//
//  INDTwiMLSayElement.m
//  Airbreak
//
//  Created by Jeff Trespalacios on 3/10/14.
//  Copyright (c) 2014 Jeff Trespalacios. All rights reserved.
//

#import "INDTwiMLSayElement.h"

@implementation INDTwiMLSayElement

- (instancetype)initWithTagName:(NSString*)tagName andValue:(NSString*)value
{
    self = [super initWithTagName:tagName
                         andValue:value];
    if (self) {
        _loops = 1;
        _voice = TwiMLSayVoiceMan;
        _language = TwiMLSayLanguageEnglish;
    }

    return self;
}

- (NSString*)xmlString
{
    return [self xmlStringForTag:self.tagName
                  withAttributes:@{
                      @"voice" : [self voiceString],
                      @"loop" : [NSString stringWithFormat:@"%lud", (unsigned long)_loops],
                      @"language" : [self languageString]
                  }
                        andValue:self.value];
}

#pragma mark - Private

- (NSString*)voiceString
{
    switch (_voice) {
    case TwiMLSayVoiceMan:
        return @"man";
        break;
    case TwiMLSayVoiceWoman:
        return @"woman";
        break;
    case TwiMLSayVoiceAlice:
        return @"alice";
        break;
    }
}

- (NSString*)languageString
{
    switch (_language) {
    case TwiMLSayLanguageEnglish:
        return @"en";
        break;
    case TwiMLSayLanguageEnglishGreatBritain:
        return @"en-gb";
        break;
    case TwiMLSayLanguageSpanish:
        return @"es";
        break;
    case TwiMLSayLanguageFrench:
        return @"fr";
        break;
    case TwiMLSayLanguageGerman:
        return @"de";
        break;
    case TwiMLSayLanguageItalian:
        return @"it";
        break;
    }

    return nil;
}

@end
