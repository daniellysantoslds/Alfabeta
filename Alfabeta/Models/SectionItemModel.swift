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
            SyllableAnswerModel(syllable: "me", sound: SoundOption.badun, buttonColor: Color("Purple 0"), textColor: Color ("White 0"), isCorrect: true),
            SyllableAnswerModel(syllable: "bi", sound: SoundOption.badun, buttonColor:  Color("Purple 0"), textColor: Color ("White 0"), isCorrect: false),
           
            SyllableAnswerModel(syllable: "xi", sound: SoundOption.badun, buttonColor:  Color("Purple 0"), textColor: Color ("White 0"), isCorrect: false),
            SyllableAnswerModel(syllable: "li", sound: SoundOption.badun, buttonColor:  Color("Purple 0"), textColor: Color ("White 0"), isCorrect: false),
            SyllableAnswerModel(syllable: "xi", sound: SoundOption.badun, buttonColor:  Color("Purple 0"), textColor: Color ("White 0"), isCorrect: false),
            SyllableAnswerModel(syllable: "li", sound: SoundOption.badun, buttonColor:  Color("Purple 0"), textColor: Color ("White 0"), isCorrect: false)
        ]
        
        let activityMelancia: ActivityItemModel = ActivityItemModel(image: "atividademelancia", syllableSentence: syllableSentenceMelancia, syllableAnswer: syllableAnswerMelancia)
        
        
        
        // ==== Banana Activity ====
        
        //Silabas da sentenca
        let syllableSentenceBanana: [SyllableSentenceModel] = [
            SyllableSentenceModel(syllable: "?", toGuess: true),
            SyllableSentenceModel(syllable: "na", toGuess: false),
            SyllableSentenceModel(syllable: "na", toGuess: false)
        ]
        
        //Silabas de resposta
        let syllableAnswerBanana : [SyllableAnswerModel] = [
            SyllableAnswerModel(syllable: "ba", sound: SoundOption.badun, buttonColor: Color("Purple 0"), textColor: Color ("White 0"), isCorrect: true),
            SyllableAnswerModel(syllable: "bi", sound: SoundOption.badun, buttonColor:  Color("Purple 0"), textColor: Color ("White 0"), isCorrect: false),
            SyllableAnswerModel(syllable: "xi", sound: SoundOption.badun, buttonColor:  Color("Purple 0"), textColor: Color ("White 0"), isCorrect: false),
            SyllableAnswerModel(syllable: "li", sound: SoundOption.badun, buttonColor:  Color("Purple 0"), textColor: Color ("White 0"), isCorrect: false)
        ]
        
        let activityBanana: ActivityItemModel = ActivityItemModel(image: "atividademelancia", syllableSentence: syllableSentenceBanana, syllableAnswer: syllableAnswerBanana)
        
        
        
        
        
        
      
        
        return SectionItemModel(activities: [activityMelancia, activityBanana])
    }
        
        
}
