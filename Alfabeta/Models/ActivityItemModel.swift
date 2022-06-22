//
//  ActivityItemModel.swift
//  Alfabeta
//
//  Created by Danielly Santos Lopes da Silva on 22/06/22.
//

import SwiftUI


class ActivityItemModel: Hashable{
    
    
    
    let id: UUID
    let image: String
    let syllableSentence: [SyllableSentenceModel]
    let syllableAnswer: [SyllableAnswerModel]
    
    init(image: String, syllableSentence: [SyllableSentenceModel], syllableAnswer:[SyllableAnswerModel]){
        
        self.id = UUID()
        self.image = image
        self.syllableSentence = syllableSentence
        self.syllableAnswer = syllableAnswer
        
    }
    
    static func == (lhs: ActivityItemModel, rhs: ActivityItemModel) -> Bool {
        return lhs.id == rhs.id
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
        hasher.combine(image)
        hasher.combine(syllableSentence)
        hasher.combine(syllableAnswer)
        
    }
    
}
