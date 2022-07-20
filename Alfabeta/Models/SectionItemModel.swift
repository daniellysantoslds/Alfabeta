//
//  SectionItemModel.swift
//  Alfabeta
//
//  Created by Danielly Santos Lopes da Silva on 22/06/22.
//

import SwiftUI

class SectionItemModel{
    let activities: [ActivityItemModel]
    
    init(activities: [ActivityItemModel]){
        self.activities = activities
        
    }
    
    static func initDataToFruits() -> SectionItemModel {
        // ==== Melacia Activity ====
        
        //Silabas da sentenca
        let syllableSentenceMelancia: [SyllableSentenceModel] = [
            SyllableSentenceModel(syllable: "?", toGuess: true),
            SyllableSentenceModel(syllable: "lan", toGuess: false),
            SyllableSentenceModel(syllable: "cia", toGuess: false)
        ]
        
        //Silabas de resposta
        let syllableAnswerMelancia : [SyllableAnswerModel] = [
            SyllableAnswerModel(syllable: "me", sound: SoundOption.MEJA, buttonColor: Color("Purple +2"), textColor: Color ("White 0"), isCorrect: true),
            SyllableAnswerModel(syllable: "la", sound: SoundOption.LA, buttonColor: Color("Purple +2"), textColor: Color ("White 0"), isCorrect: false),
            SyllableAnswerModel(syllable: "pa", sound: SoundOption.PA, buttonColor:  Color("Purple +2"), textColor: Color ("White 0"), isCorrect: false),
            SyllableAnswerModel(syllable: "xa", sound: SoundOption.XA, buttonColor:  Color("Purple +2"), textColor: Color ("White 0"), isCorrect: false),
            SyllableAnswerModel(syllable: "te", sound: SoundOption.TE, buttonColor:  Color("Purple +2"), textColor: Color ("White 0"), isCorrect: false),
            SyllableAnswerModel(syllable: "de", sound: SoundOption.DE, buttonColor:  Color("Purple +2"), textColor: Color ("White 0"), isCorrect: false)
        ]
        
        let activityMelancia: ActivityItemModel = ActivityItemModel(image: "melancia", syllableSentence: syllableSentenceMelancia, syllableAnswer: syllableAnswerMelancia)
        
        
        
        // ==== Banana Activity ====
        
        //Silabas da sentenca
        let syllableSentenceBanana: [SyllableSentenceModel] = [
            SyllableSentenceModel(syllable: "?", toGuess: true),
            SyllableSentenceModel(syllable: "na", toGuess: false),
            SyllableSentenceModel(syllable: "na", toGuess: false)
        ]
        
        //Silabas de resposta
        let syllableAnswerBanana : [SyllableAnswerModel] = [
            SyllableAnswerModel(syllable: "ba", sound: SoundOption.BA, buttonColor: Color("Purple +2"), textColor: Color ("White 0"), isCorrect: true),
            SyllableAnswerModel(syllable: "la", sound: SoundOption.LA, buttonColor:  Color("Purple +2"), textColor: Color ("White 0"), isCorrect: false),
           
            SyllableAnswerModel(syllable: "pa", sound: SoundOption.PA, buttonColor:  Color("Purple +2"), textColor: Color ("White 0"), isCorrect: false),
            SyllableAnswerModel(syllable: "xa", sound: SoundOption.XA, buttonColor:  Color("Purple +2"), textColor: Color ("White 0"), isCorrect: false),
            SyllableAnswerModel(syllable: "fa", sound: SoundOption.FA, buttonColor:  Color("Purple +2"), textColor: Color ("White 0"), isCorrect: false),
            SyllableAnswerModel(syllable: "ma", sound: SoundOption.MA, buttonColor:  Color("Purple +2"), textColor: Color ("White 0"), isCorrect: false)
            
        ]
        
        let activityBanana: ActivityItemModel = ActivityItemModel(image: "banana", syllableSentence: syllableSentenceBanana, syllableAnswer: syllableAnswerBanana)
        
        
        
        // ==== cereja Activity ====
        
        //Silabas da sentenca
        let syllableSentenceCereja: [SyllableSentenceModel] = [
            SyllableSentenceModel(syllable: "ce", toGuess: false),
            SyllableSentenceModel(syllable: "re", toGuess: false),
            SyllableSentenceModel(syllable: "?", toGuess: true)
        ]
        
        //Silabas de resposta
        let syllableAnswerCereja : [SyllableAnswerModel] = [
            SyllableAnswerModel(syllable: "de", sound: SoundOption.DE, buttonColor: Color("Purple +2"), textColor: Color ("White 0"), isCorrect: false),
            SyllableAnswerModel(syllable: "la", sound: SoundOption.LA, buttonColor:  Color("Purple +2"), textColor: Color ("White 0"), isCorrect: false),
           
            SyllableAnswerModel(syllable: "ja", sound: SoundOption.JA, buttonColor:  Color("Purple +2"), textColor: Color ("White 0"), isCorrect: true),
            SyllableAnswerModel(syllable: "be", sound: SoundOption.XA, buttonColor:  Color("Purple +2"), textColor: Color ("White 0"), isCorrect: false),
            SyllableAnswerModel(syllable: "pi", sound: SoundOption.PI, buttonColor:  Color("Purple +2"), textColor: Color ("White 0"), isCorrect: false),
            SyllableAnswerModel(syllable: "ma", sound: SoundOption.MA, buttonColor:  Color("Purple +2"), textColor: Color ("White 0"), isCorrect: false)
            
        ]
        
        let activityCereja: ActivityItemModel = ActivityItemModel(image: "cereja", syllableSentence: syllableSentenceCereja, syllableAnswer: syllableAnswerCereja)
        
        
        // ==== laranja Activity ====
        
        //Silabas da sentenca
        let syllableSentenceAmora: [SyllableSentenceModel] = [
            SyllableSentenceModel(syllable: "a", toGuess: false),
            SyllableSentenceModel(syllable: "?", toGuess: true),
            SyllableSentenceModel(syllable: "ra", toGuess: false)
        ]
        
        //Silabas de resposta
        let syllableAnswerAmora : [SyllableAnswerModel] = [
            SyllableAnswerModel(syllable: "pi", sound: SoundOption.PI, buttonColor: Color("Purple +2"), textColor: Color ("White 0"), isCorrect: false),
            SyllableAnswerModel(syllable: "ma", sound: SoundOption.MA, buttonColor:  Color("Purple +2"), textColor: Color ("White 0"), isCorrect: false),
           
            SyllableAnswerModel(syllable: "mo", sound: SoundOption.MO, buttonColor:  Color("Purple +2"), textColor: Color ("White 0"), isCorrect: true),
            SyllableAnswerModel(syllable: "be", sound: SoundOption.BE, buttonColor:  Color("Purple +2"), textColor: Color ("White 0"), isCorrect: false),
            SyllableAnswerModel(syllable: "xa", sound: SoundOption.XA, buttonColor:  Color("Purple +2"), textColor: Color ("White 0"), isCorrect: false),
            SyllableAnswerModel(syllable: "fa", sound: SoundOption.FA, buttonColor:  Color("Purple +2"), textColor: Color ("White 0"), isCorrect: false)
            
        ]
        
        let activityAmora: ActivityItemModel = ActivityItemModel(image: "amora", syllableSentence: syllableSentenceAmora, syllableAnswer: syllableAnswerAmora)
        
        
        
        
        
        
        
      
        
        return SectionItemModel(activities: [activityMelancia, activityBanana, activityCereja, activityAmora])
    }
    
    //iniciar atividades em outro card "exemplo card legumes"
    //static func initDataToLegums() -> SectionItemModel {
        
        
        
   // }
    
        
}
