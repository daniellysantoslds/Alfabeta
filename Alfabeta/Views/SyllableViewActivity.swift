//
//  AtividadeSilabaView.swift
//  Alfabeta
//
//  Created by Danielly Santos Lopes da Silva on 18/05/22.
//

import SwiftUI

struct SyllableViewActivity: View {
    @Environment(\.presentationMode) var presentationMode
    
    let activities: [ActivityItemModel]
    @State var activityIndex: Int = 0
    
    init(activities: [ActivityItemModel]) {
        self.activities = activities
    }
    
    
    
    func changeListActivityIndex() -> Void {
        if (
            (self.activityIndex + 1) <= (self.activities.count - 1)) {
            self.activityIndex += 1
            
        } else{
            self.presentationMode.wrappedValue.dismiss()
        }
    }
    
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            Spacer(minLength: 72)
            
            VStack(alignment: .center, spacing: 10)
            {
                HStack(alignment: .center
                       , spacing: 0){
                    ActivityImageView(
                        imagematividade: activities[activityIndex].image)
                        .padding([.bottom, .horizontal],0)
                    
                }
                
                Spacer(minLength: 32)
                
                //silabas para advinhar
                LazyVGrid(columns: [
                    GridItem(.adaptive(minimum: 100))
                ],
                          spacing: 20) { ForEach(activities[activityIndex].syllableSentence, id: \.id ) {
                    syllableSentence in
                   CardSyllableView(
                        textButton: syllableSentence.syllable,
                        toGuess: syllableSentence.toGuess)
                }
            }
            
            Spacer(minLength: 32)
            
                
            //opcoes de silabas
            LazyVGrid(columns: [
                GridItem(.adaptive(minimum: 100))
            ],
                      spacing: 20) {
                ForEach(activities[activityIndex].syllableAnswer, id: \.id ) {
                    syllableAnswer in
                    ClickSyllableView(
                        buttonText: syllableAnswer.syllable,
                        buttonColor: syllableAnswer.buttonColor,
                        textColor: syllableAnswer.textColor,
                        sound: syllableAnswer.sound,
                        silabaActive: syllableAnswer.isCorrect, chandeListActivityIndex: self.changeListActivityIndex
                        )
                }
            }
        }
    }
        
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color("White 0"))
}

struct SyllableViewActivity_Previews: PreviewProvider {
    static var previews: some View {
        SyllableViewActivity(activities: SectionItemModel.initDataToFruits().activities)
    }
}

}

 
              
