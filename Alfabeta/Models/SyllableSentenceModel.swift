//
//  SyllableSentenceModel.swift
//  Alfabeta
//
//  Created by Danielly Santos Lopes da Silva on 22/06/22.
//

import SwiftUI


class SyllableSentenceModel: Hashable{
    
    let id: UUID
    let syllable: String
    let toGuess: Bool
    
    
    init(syllable: String, toGuess: Bool = false) {
        self.id = UUID()
        self.syllable = syllable
        self.toGuess = toGuess
    }
    
    static func == (lhs: SyllableSentenceModel, rhs: SyllableSentenceModel) -> Bool {
        return lhs.id == rhs.id
        
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
        hasher.combine(syllable)
        hasher.combine(toGuess)
        
    }
}
