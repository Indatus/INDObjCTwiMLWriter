//
//  INDTwiMLSayElement.h
//  Airbreak
//
//  Created by Jeff Trespalacios on 3/10/14.
//  Copyright (c) 2014 Jeff Trespalacios. All rights reserved.
//

#import "INDTwiMLElementWithValue.h"

typedef NS_ENUM(NSInteger, TwiMLSayLanguage) {
    // Standard Languages can use either man or woman voice
    TwiMLSayLanguageEnglish,
    TwiMLSayLanguageEnglishGreatBritain,
    TwiMLSayLanguageSpanish,
    TwiMLSayLanguageFrench,
    TwiMLSayLanguageGerman,
    TwiMLSayLanguageItalian,
    // Extended Languages must use alice voice
    TwiMLSayLanguageDanishDenmark,
    TwiMLSayLanguageGermanGermany,
    TwiMLSayLanguageEnglishAustralia,
    TwiMLSayLanguageEnglishCanada,
    TwiMLSayLanguageEnglishUK,
    TwiMLSayLanguageEnglishIndia,
    TwiMLSayLanguageEnglishUnitedStates,
    TwiMLSayLanguageCatalanSpain,
    TwiMLSayLanguageSpanishSpain,
    TwiMLSayLanguageSpanishMexico,
    TwiMLSayLanguageFinnishFinland,
    TwiMLSayLanguageFrenchCanada,
    TwiMLSayLanguageFrenchFrance,
    TwiMLSayLanguageItalianItaly,
    TwiMLSayLanguageJapaneseJapan,
    TwiMLSayLanguageKoreanKorea,
    TwiMLSayLanguageNorwegianNorway,
    TwiMLSayLanguageDutchNetherlands,
    TwiMLSayLanguagePolishPoland,
    TwiMLSayLanguagePortugueseBrazil,
    TwiMLSayLanguagePortuguesePortugal,
    TwiMLSayLanguageRussianRussia,
    TwiMLSayLanguageSwedishSweden,
    TwiMLSayLanguageChineseMandarin,
    TwiMLSayLanguageChineseCantonese,
    TwiMLSayLanguageChineseTaiwaneseMandarin
};

typedef NS_ENUM(NSUInteger, TwiMLSayVoice) {
    TwiMLSayVoiceMan,
    TwiMLSayVoiceWoman,
    TwiMLSayVoiceAlice
};

@interface INDTwiMLSayElement : INDTwiMLElementWithValue

@property (nonatomic) NSUInteger loops;
@property (nonatomic) TwiMLSayLanguage language;
@property (nonatomic) TwiMLSayVoice voice;

@end
