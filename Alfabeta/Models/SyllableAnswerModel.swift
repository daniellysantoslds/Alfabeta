//
//  File.swift
//  Alfabeta
//
//  Created by Danielly Santos Lopes da Silva on 22/06/22.
//

import SwiftUI


class SyllableAnswerModel: Hashable{
    
    let id: UUID
    let syllable: String
    let sound: SoundOption
    let buttonColor: Color
    let textColor: Color
    let isCorrect: Bool
    
    
    init(syllable: String, sound:SoundOption, buttonColor:Color, textColor:Color, isCorrect: Bool){
        
        self.id = UUID()
        self.syllable = syllable
        self.sound = sound
        self.buttonColor = buttonColor
        self.textColor = textColor
        self.isCorrect = isCorrect
    }
    
    static func == (lhs: SyllableAnswerModel, rhs: SyllableAnswerModel) -> Bool {
        return lhs.id == rhs.id
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
        hasher.combine(syllable)
        hasher.combine(sound)
        hasher.combine(buttonColor)
        hasher.combine(textColor)
        hasher.combine(isCorrect)
        
    }
    
}
