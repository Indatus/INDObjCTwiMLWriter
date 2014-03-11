//
//  INDTwiMLSayElement.m
//  Airbreak
//
//  Created by Jeff Trespalacios on 3/10/14.
//  Copyright (c) 2014 Jeff Trespalacios. All rights reserved.
//

#import "INDTwiMLSayElement.h"

static NSString* const kTagName = @"Say";
static NSString* const kLoopsKeyPath = @"loops";
static NSString* const kLanguageKeyPath = @"language";
static NSString* const kVoiceKeyPath = @"voice";

@implementation INDTwiMLSayElement
@synthesize loops = _loops;
@synthesize language = _language;
@synthesize voice = _voice;

- (instancetype)init
{
    self = [super initWithTagName:kTagName];
    if (self) {
        _loops = 1;
        _voice = TwiMLSayVoiceMan;
        _language = TwiMLSayLanguageEnglish;
    }

    return self;
}

- (NSDictionary*)attributes
{
    NSMutableDictionary* dict = [NSMutableDictionary new];
    dict[@"voice"] = [self voiceString];
    dict[@"loop"] = [NSString stringWithFormat:@"%lud", (unsigned long)_loops];
    dict[@"language"] = [self languageString];

    return [dict copy];
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
    case TwiMLSayLanguageDanishDenmark:
        return @"da-DK";
        break;
    case TwiMLSayLanguageGermanGermany:
        return @"de-DE";
        break;
    case TwiMLSayLanguageEnglishAustralia:
        return @"en-AU";
        break;
    case TwiMLSayLanguageEnglishCanada:
        return @"en-CA";
        break;
    case TwiMLSayLanguageEnglishUK:
        return @"en-GB";
        break;
    case TwiMLSayLanguageEnglishIndia:
        return @"en-IN";
        break;
    case TwiMLSayLanguageEnglishUnitedStates:
        return @"en-US";
        break;
    case TwiMLSayLanguageCatalanSpain:
        return @"ca-ES";
        break;
    case TwiMLSayLanguageSpanishSpain:
        return @"es-ES";
        break;
    case TwiMLSayLanguageSpanishMexico:
        return @"es-MX";
        break;
    case TwiMLSayLanguageFinnishFinland:
        return @"fi-FI";
        break;
    case TwiMLSayLanguageFrenchCanada:
        return @"fr-CA";
        break;
    case TwiMLSayLanguageFrenchFrance:
        return @"fr-FR";
        break;
    case TwiMLSayLanguageItalianItaly:
        return @"it-IT";
        break;
    case TwiMLSayLanguageJapaneseJapan:
        return @"ja-JP";
        break;
    case TwiMLSayLanguageKoreanKorea:
        return @"ko-KR";
        break;
    case TwiMLSayLanguageNorwegianNorway:
        return @"nb-NO";
        break;
    case TwiMLSayLanguageDutchNetherlands:
        return @"nl-NL";
        break;
    case TwiMLSayLanguagePolishPoland:
        return @"pl-PL";
        break;
    case TwiMLSayLanguagePortugueseBrazil:
        return @"pt-BR";
        break;
    case TwiMLSayLanguagePortuguesePortugal:
        return @"pt-PT";
        break;
    case TwiMLSayLanguageRussianRussia:
        return @"ru-RU";
        break;
    case TwiMLSayLanguageSwedishSweden:
        return @"sv-SE";
        break;
    case TwiMLSayLanguageChineseMandarin:
        return @"zh-CN";
        break;
    case TwiMLSayLanguageChineseCantonese:
        return @"zh-HK";
        break;
    case TwiMLSayLanguageChineseTaiwaneseMandarin:
        return @"zh-TW";
        break;
    }
}

@end
