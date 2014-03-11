//
//  INDTwiMLSayElement.m
//  Airbreak
//
//  Created by Jeff Trespalacios on 3/10/14.
//  Copyright (c) 2014 Jeff Trespalacios. All rights reserved.
//

#import "INDTwiMLSayElement.h"

static NSString* const kTagName = @"Say";

static NSString* const kLOOPKEY = @"loop";
static NSString* const kLANGUAGEKEY = @"language";
static NSString* const kVOICEKEY = @"voice";

static NSString* const kMANVOICE = @"man";
static NSString* const kWOMANVOICE = @"woman";
static NSString* const kALICEVOICE = @"alice";

static NSString* const kLANGENGLISH = @"en";
static NSString* const kLANGENGLISHGB = @"en-gb";
static NSString* const kLANGSPANISH = @"es";
static NSString* const kLANGFRENCH = @"fr";
static NSString* const kLANGGERMAN = @"de";
static NSString* const kLANGITALIAN = @"it";
static NSString* const kLANGDANISHDENNARK = @"da-DK";
static NSString* const kLANGGERMANGERMANY = @"de-DE";
static NSString* const kLANGENGLISHAUSTRALIA = @"en-AU";
static NSString* const kLANGENGLISHCANADA = @"en-CA";
static NSString* const kLANGENGLISHUK = @"en-GB";
static NSString* const kLANGENGLISHINDIA = @"en-IN";
static NSString* const kLANGENGLISHUNITEDSTATES = @"en-US";
static NSString* const kLANGCATALANSPAIN = @"ca-ES";
static NSString* const kLANGSPANISHSPAIN = @"es-ES";
static NSString* const kLANGSPANISHMEXICO = @"es-MX";
static NSString* const kLANGFINNISHFINLAND = @"fi-FI";
static NSString* const kLANGFRENCHCANADA = @"fr-CA";
static NSString* const kLANGFRENCHFRANCE = @"fr-FR";
static NSString* const kLANGITALIANITALY = @"it-IT";
static NSString* const kLANGJAPANESEJAPAN = @"ja-JP";
static NSString* const kLANGKOREANKOREA = @"ko-KR";
static NSString* const kLANGNORWEGIANNORWAY = @"nb-NO";
static NSString* const kLANGDUTCHNETHERLANDS = @"nl-NL";
static NSString* const kLANGPOLISHPOLAND = @"pl-PL";
static NSString* const kLANGPORTUGUESEBRAZIL = @"pt-BR";
static NSString* const kLANGPORTUGUESEPORTUGAL = @"pt-PT";
static NSString* const kLANGRUSSIANRUSSIA = @"ru-RU";
static NSString* const kLANGSWEDISHSWEDEN = @"sv-SE";
static NSString* const kLANGCHINESEMANDARIN = @"zh-CN";
static NSString* const kLANGCHINESECANTONESE = @"zh-HK";
static NSString* const kLANGCHINESETAEWANESEMANDARIN = @"zh-TW";

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
    dict[kVOICEKEY] = [self voiceString];
    dict[kLOOPKEY] = [NSString stringWithFormat:@"%lud", (unsigned long)_loops];
    dict[kLANGUAGEKEY] = [self languageString];

    return [dict copy];
}

#pragma mark - Private
- (NSString*)voiceString
{
    switch (_voice) {
    case TwiMLSayVoiceMan:
        return kMANVOICE;
        break;
    case TwiMLSayVoiceWoman:
        return kWOMANVOICE;
        break;
    case TwiMLSayVoiceAlice:
        return kALICEVOICE;
        break;
    }
}

- (NSString*)languageString
{
    switch (_language) {
    case TwiMLSayLanguageEnglish:
        return kLANGENGLISH;
        break;
    case TwiMLSayLanguageEnglishGreatBritain:
        return kLANGENGLISHGB;
        break;
    case TwiMLSayLanguageSpanish:
        return kLANGSPANISH;
        break;
    case TwiMLSayLanguageFrench:
        return kLANGFRENCH;
        break;
    case TwiMLSayLanguageGerman:
        return kLANGGERMAN;
        break;
    case TwiMLSayLanguageItalian:
        return kLANGITALIAN;
        break;
    case TwiMLSayLanguageDanishDenmark:
        return kLANGDANISHDENNARK;
        break;
    case TwiMLSayLanguageGermanGermany:
        return kLANGGERMANGERMANY;
        break;
    case TwiMLSayLanguageEnglishAustralia:
        return kLANGENGLISHAUSTRALIA;
        break;
    case TwiMLSayLanguageEnglishCanada:
        return kLANGENGLISHCANADA;
        break;
    case TwiMLSayLanguageEnglishUK:
        return kLANGENGLISHUK;
        break;
    case TwiMLSayLanguageEnglishIndia:
        return kLANGENGLISHINDIA;
        break;
    case TwiMLSayLanguageEnglishUnitedStates:
        return kLANGENGLISHUNITEDSTATES;
        break;
    case TwiMLSayLanguageCatalanSpain:
        return kLANGCATALANSPAIN;
        break;
    case TwiMLSayLanguageSpanishSpain:
        return kLANGSPANISHSPAIN;
        break;
    case TwiMLSayLanguageSpanishMexico:
        return kLANGSPANISHMEXICO;
        break;
    case TwiMLSayLanguageFinnishFinland:
        return kLANGFINNISHFINLAND;
        break;
    case TwiMLSayLanguageFrenchCanada:
        return kLANGFRENCHCANADA;
        break;
    case TwiMLSayLanguageFrenchFrance:
        return kLANGFRENCHFRANCE;
        break;
    case TwiMLSayLanguageItalianItaly:
        return kLANGITALIANITALY;
        break;
    case TwiMLSayLanguageJapaneseJapan:
        return kLANGJAPANESEJAPAN;
        break;
    case TwiMLSayLanguageKoreanKorea:
        return kLANGKOREANKOREA;
        break;
    case TwiMLSayLanguageNorwegianNorway:
        return kLANGNORWEGIANNORWAY;
        break;
    case TwiMLSayLanguageDutchNetherlands:
        return kLANGDUTCHNETHERLANDS;
        break;
    case TwiMLSayLanguagePolishPoland:
        return kLANGPOLISHPOLAND;
        break;
    case TwiMLSayLanguagePortugueseBrazil:
        return kLANGPORTUGUESEBRAZIL;
        break;
    case TwiMLSayLanguagePortuguesePortugal:
        return kLANGPORTUGUESEPORTUGAL;
        break;
    case TwiMLSayLanguageRussianRussia:
        return kLANGRUSSIANRUSSIA;
        break;
    case TwiMLSayLanguageSwedishSweden:
        return kLANGSWEDISHSWEDEN;
        break;
    case TwiMLSayLanguageChineseMandarin:
        return kLANGCHINESEMANDARIN;
        break;
    case TwiMLSayLanguageChineseCantonese:
        return kLANGCHINESECANTONESE;
        break;
    case TwiMLSayLanguageChineseTaiwaneseMandarin:
        return kLANGCHINESETAEWANESEMANDARIN;
        break;
    }
}

@end
