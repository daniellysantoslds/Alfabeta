//
//  SilabaItemView.swift
//  Alfabeta
//
//  Created by Danielly Santos Lopes da Silva on 18/05/22.
//

import SwiftUI

struct ButtonSilabaItemView: View {
    var buttonText: String
    @State var buttonColor: Color
    @State var textColor: Color
    @State var initColor: Color
    var silabaActive: Bool
    var sound: SoundOption
    
    
   
   
    init(buttonText: String, buttonColor:Color, textColor:Color, sound: SoundOption, silabaActive: Bool = false
    ){
        _initColor = State(initialValue: buttonColor)
        self.buttonText = buttonText
        self.buttonColor = buttonColor
        self.textColor = textColor
        self.silabaActive = silabaActive
        self.sound = sound
        
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
                  
            }
            
            
            
            
        } label:{
            ZStack{
                Text(buttonText.uppercased()).bold()
                    .padding(30)
                    .font(.largeTitle).foregroundColor(self.textColor).multilineTextAlignment(.center
                    )
                
                    .frame(width: 137, height: 104, alignment: .center)
                    .background(self.buttonColor)
                    .clipShape(RoundedRectangle(cornerRadius: 8))
                    .multilineTextAlignment(.center)
                
                
            
        }
          
           
    }
}



struct ButtonSilabaItemView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonSilabaItemView(buttonText: "RA", buttonColor: Color("Blue 0"), textColor: Color("White 0"), sound: SoundOption.badun)
    }
}
}
