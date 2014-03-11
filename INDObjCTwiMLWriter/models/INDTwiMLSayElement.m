//
//  INDTwiMLSayElement.m
//  Airbreak
//
//  Created by Jeff Trespalacios on 3/10/14.
//  Copyright (c) 2014 Jeff Trespalacios. All rights reserved.
//

#import "INDTwiMLSayElement.h"

static NSString* const kTagName = @"Say";

static NSString* const kLoopKey = @"loop";
static NSString* const kLanguageKey = @"language";
static NSString* const kVoiceKey = @"voice";

static NSString* const kVoiceMan = @"man";
static NSString* const kVoiceWoman = @"woman";
static NSString* const kVoiceAlice = @"alice";

static NSString* const kLangEnglish = @"en";
static NSString* const kLangEnglishGreatBritain = @"en-gb";
static NSString* const kLangSpanish = @"es";
static NSString* const kLangFrench = @"fr";
static NSString* const kLangGerman = @"de";
static NSString* const kLangItalian = @"it";
static NSString* const kLangDanishDenmark = @"da-DK";
static NSString* const kLangGermanGermany = @"de-DE";
static NSString* const kLangEnglishAustralia = @"en-AU";
static NSString* const kLangEnglishCanada = @"en-CA";
static NSString* const kLangEnglishUK = @"en-GB";
static NSString* const kLangEnglishIndia = @"en-IN";
static NSString* const kLangEnglishUnitedStates = @"en-US";
static NSString* const kLangCatalanSpanish = @"ca-ES";
static NSString* const kLangSpanishSpain = @"es-ES";
static NSString* const kLangSpanishMexico = @"es-MX";
static NSString* const kLangFinnishFinland = @"fi-FI";
static NSString* const kLangFrenchCanada = @"fr-CA";
static NSString* const kLangFrenchFrance = @"fr-FR";
static NSString* const kLangItalianItaly = @"it-IT";
static NSString* const kLangJapaneseJapan = @"ja-JP";
static NSString* const kLangKoreanKorea = @"ko-KR";
static NSString* const kLangNorwegianNorway = @"nb-NO";
static NSString* const kLangDutchNetherlands = @"nl-NL";
static NSString* const kLangPolishPoland = @"pl-PL";
static NSString* const kLangPortugusesBrazil = @"pt-BR";
static NSString* const kLangPortuguesePortugal = @"pt-PT";
static NSString* const kLangRussianRussia = @"ru-RU";
static NSString* const kLangSwedishSweden = @"sv-SE";
static NSString* const kLangChineseMandarin = @"zh-CN";
static NSString* const kLangChineseCantonese = @"zh-HK";
static NSString* const kLangChineseTaewaneseMandarin = @"zh-TW";

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
    dict[kVoiceKey] = [self voiceString];
    dict[kLoopKey] = [NSString stringWithFormat:@"%lud", (unsigned long)_loops];
    dict[kLanguageKey] = [self languageString];

    return [dict copy];
}

#pragma mark - Private
- (NSString*)voiceString
{
    switch (_voice) {
    case TwiMLSayVoiceMan:
        return kVoiceMan;
        break;
    case TwiMLSayVoiceWoman:
        return kVoiceWoman;
        break;
    case TwiMLSayVoiceAlice:
        return kVoiceAlice;
        break;
    }
}

- (NSString*)languageString
{
    switch (_language) {
    case TwiMLSayLanguageEnglish:
        return kLangEnglish;
        break;
    case TwiMLSayLanguageEnglishGreatBritain:
        return kLangEnglishGreatBritain;
        break;
    case TwiMLSayLanguageSpanish:
        return kLangSpanish;
        break;
    case TwiMLSayLanguageFrench:
        return kLangFrench;
        break;
    case TwiMLSayLanguageGerman:
        return kLangGerman;
        break;
    case TwiMLSayLanguageItalian:
        return kLangItalian;
        break;
    case TwiMLSayLanguageDanishDenmark:
        return kLangDanishDenmark;
        break;
    case TwiMLSayLanguageGermanGermany:
        return kLangGermanGermany;
        break;
    case TwiMLSayLanguageEnglishAustralia:
        return kLangEnglishAustralia;
        break;
    case TwiMLSayLanguageEnglishCanada:
        return kLangEnglishCanada;
        break;
    case TwiMLSayLanguageEnglishUK:
        return kLangEnglishUK;
        break;
    case TwiMLSayLanguageEnglishIndia:
        return kLangEnglishIndia;
        break;
    case TwiMLSayLanguageEnglishUnitedStates:
        return kLangEnglishUnitedStates;
        break;
    case TwiMLSayLanguageCatalanSpain:
        return kLangCatalanSpanish;
        break;
    case TwiMLSayLanguageSpanishSpain:
        return kLangSpanishSpain;
        break;
    case TwiMLSayLanguageSpanishMexico:
        return kLangSpanishMexico;
        break;
    case TwiMLSayLanguageFinnishFinland:
        return kLangFinnishFinland;
        break;
    case TwiMLSayLanguageFrenchCanada:
        return kLangFrenchCanada;
        break;
    case TwiMLSayLanguageFrenchFrance:
        return kLangFrenchFrance;
        break;
    case TwiMLSayLanguageItalianItaly:
        return kLangItalianItaly;
        break;
    case TwiMLSayLanguageJapaneseJapan:
        return kLangJapaneseJapan;
        break;
    case TwiMLSayLanguageKoreanKorea:
        return kLangKoreanKorea;
        break;
    case TwiMLSayLanguageNorwegianNorway:
        return kLangNorwegianNorway;
        break;
    case TwiMLSayLanguageDutchNetherlands:
        return kLangDutchNetherlands;
        break;
    case TwiMLSayLanguagePolishPoland:
        return kLangPolishPoland;
        break;
    case TwiMLSayLanguagePortugueseBrazil:
        return kLangPortugusesBrazil;
        break;
    case TwiMLSayLanguagePortuguesePortugal:
        return kLangPortuguesePortugal;
        break;
    case TwiMLSayLanguageRussianRussia:
        return kLangRussianRussia;
        break;
    case TwiMLSayLanguageSwedishSweden:
        return kLangSwedishSweden;
        break;
    case TwiMLSayLanguageChineseMandarin:
        return kLangChineseMandarin;
        break;
    case TwiMLSayLanguageChineseCantonese:
        return kLangChineseCantonese;
        break;
    case TwiMLSayLanguageChineseTaiwaneseMandarin:
        return kLangChineseTaewaneseMandarin;
        break;
    }
}

@end
