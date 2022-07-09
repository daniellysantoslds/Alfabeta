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
            SyllableAnswerModel(syllable: "me", sound: SoundOption.ME, buttonColor: Color("Purple 0"), textColor: Color ("White 0"), isCorrect: true),
            SyllableAnswerModel(syllable: "be", sound: SoundOption.BE, buttonColor:  Color("Yellow 0"), textColor: Color ("Black 0"), isCorrect: false),
           
            SyllableAnswerModel(syllable: "pa", sound: SoundOption.PA, buttonColor:  Color("Purple 0"), textColor: Color ("White 0"), isCorrect: false),
            SyllableAnswerModel(syllable: "xa", sound: SoundOption.XA, buttonColor:  Color("Yellow 0"), textColor: Color ("Black 0"), isCorrect: false),
            SyllableAnswerModel(syllable: "te", sound: SoundOption.TE, buttonColor:  Color("Purple 0"), textColor: Color ("White 0"), isCorrect: false),
            SyllableAnswerModel(syllable: "de", sound: SoundOption.DE, buttonColor:  Color("Yellow 0"), textColor: Color ("Black 0"), isCorrect: false)
        ]
        
        let activityMelancia: ActivityItemModel = ActivityItemModel(image: "melanciafofa", syllableSentence: syllableSentenceMelancia, syllableAnswer: syllableAnswerMelancia)
        
        
        
        // ==== Banana Activity ====
        
        //Silabas da sentenca
        let syllableSentenceBanana: [SyllableSentenceModel] = [
            SyllableSentenceModel(syllable: "?", toGuess: true),
            SyllableSentenceModel(syllable: "na", toGuess: false),
            SyllableSentenceModel(syllable: "na", toGuess: false)
        ]
        
        //Silabas de resposta
        let syllableAnswerBanana : [SyllableAnswerModel] = [
            SyllableAnswerModel(syllable: "ba", sound: SoundOption.BA, buttonColor: Color("Purple 0"), textColor: Color ("White 0"), isCorrect: true),
            SyllableAnswerModel(syllable: "la", sound: SoundOption.LA, buttonColor:  Color("Yellow 0"), textColor: Color ("Black 0"), isCorrect: false),
           
            SyllableAnswerModel(syllable: "pa", sound: SoundOption.PA, buttonColor:  Color("Purple 0"), textColor: Color ("White 0"), isCorrect: false),
            SyllableAnswerModel(syllable: "xa", sound: SoundOption.XA, buttonColor:  Color("Yellow 0"), textColor: Color ("Black 0"), isCorrect: false),
            SyllableAnswerModel(syllable: "fa", sound: SoundOption.FA, buttonColor:  Color("Purple 0"), textColor: Color ("White 0"), isCorrect: false),
            SyllableAnswerModel(syllable: "ma", sound: SoundOption.MA, buttonColor:  Color("Yellow 0"), textColor: Color ("Black 0"), isCorrect: false)
            
        ]
        
        let activityBanana: ActivityItemModel = ActivityItemModel(image: "banana 1", syllableSentence: syllableSentenceBanana, syllableAnswer: syllableAnswerBanana)
        
        
        
        
        
        
      
        
        return SectionItemModel(activities: [activityMelancia, activityBanana])
    }
        
        
}
