//
//  SilabaItemView.swift
//  Alfabeta
//
//  Created by Danielly Santos Lopes da Silva on 18/05/22.
//

import SwiftUI

struct ClickSyllableView: View {
    var buttonText: String
    @State var buttonColor: Color
    @State var textColor: Color
    @State var initColor: Color
    let silabaActive: Bool
    let sound: SoundOption
    let changeListActivityIndex: () -> Void
   
   
    init(buttonText: String,
         buttonColor:Color,
         textColor:Color,
         sound: SoundOption,
         silabaActive: Bool = false,
         chandeListActivityIndex: @escaping () -> Void
    ){
        
        
        _initColor = State(initialValue: buttonColor)
        self.buttonText = buttonText
        self.buttonColor = buttonColor
        self.textColor = textColor
        self.silabaActive = silabaActive
        self.sound = sound
        self.changeListActivityIndex = chandeListActivityIndex
        
    }
    
    var body: some View {
        Button {
            
            SoundManager.instance.playSound(sound: self.sound)
            if silabaActive {
                self.buttonColor = Color("Green 0")
            } else{
                self.buttonColor = Color("Red -1")
            }
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                self.buttonColor = self.initColor
                
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
                    if silabaActive {
                        // Chamo a funcao que recebi, ela é responsável por alterar o index da lista, e assim, ir para a próxima atividade caso exista
                        self.changeListActivityIndex();
                    }
                }
                
            }
            

        } label:{
            ZStack{
                Text(buttonText.uppercased()).bold()
                    .padding(0)
                    .font(.largeTitle).foregroundColor(self.textColor).multilineTextAlignment(.center)
                    .frame(width: 100, height: 100, alignment: .center)
                    .background(self.buttonColor)
                    .clipShape(RoundedRectangle(cornerRadius: 8))
                    .multilineTextAlignment(.center)
        }
          
    }
}



    struct ClickSyllableView_Previews: PreviewProvider {
        static var previews: some View {
            ClickSyllableView(
                buttonText: "RA",
                buttonColor: Color("Blue 0"),
                textColor: Color("White 0"),
                sound: SoundOption.badun,
                chandeListActivityIndex: {
                    print("Mudou index")
                })
        }
    }
}
