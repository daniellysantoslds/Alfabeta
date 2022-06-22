//
//  AtividadeSilabaView.swift
//  Alfabeta
//
//  Created by Danielly Santos Lopes da Silva on 18/05/22.
//

import SwiftUI

struct SyllableViewActivity: View {
    var body: some View {
        NavigationView {
           
                VStack(alignment: .center, spacing: 10)
                {
                    
                    
                    HStack(alignment: .center
                           , spacing: 0){
                        ActivityImageView(imagematividade: "atividademelancia")
                        .padding([.bottom, .horizontal],0)
                      
                    }
                    Spacer(minLength: 32)
                    
                    
                   //silabas para advinhar
                    HStack(alignment: .center
                           , spacing: 10){
                        
                        CardSyllableView(silabacorreta: "?", buttonColor: Color("Grey -1"), textColor: Color("Black 0"))
                        CardSyllableView(silabacorreta: "lan", buttonColor: Color("Blue +1"), textColor: Color("White 0"))
                        CardSyllableView(silabacorreta: "cia", buttonColor: Color("Blue +1"), textColor: Color("White 0"))
                } .padding([.bottom, .horizontal],0)
                    
                    
                    Spacer(minLength: 24)
                    
                    //opcoes de silabas
                    
                    HStack(alignment: .center
                           , spacing: 0){
                        ButtonSilabaItemView(buttonText: "me", buttonColor: Color("Purple 0"), textColor: Color("White 0"), sound: SoundOption.ME,
                                             silabaActive: true)
                    Spacer(minLength: 32)
                        ButtonSilabaItemView(buttonText: "be", buttonColor: Color("Yellow -1"), textColor: Color("Black 0"), sound: SoundOption.BE, silabaActive: false)
                    } .padding([.bottom, .horizontal],32)
                    
                    
                    HStack(alignment: .center
                           , spacing: 0){
                        ButtonSilabaItemView(buttonText: "pa", buttonColor: Color("Yellow 0"), textColor: Color("Black 0"),  sound: SoundOption.PA, silabaActive: false)
                        Spacer()
                        ButtonSilabaItemView(buttonText: "xa", buttonColor: Color("Purple 0"), textColor: Color("White 0"),  sound: SoundOption.XA, silabaActive: false)
                        
                    } .padding([.bottom, .horizontal],32)
                }
                
            
        

        }
    }
    struct SyllableViewActivity_Previews: PreviewProvider {
    static var previews: some View {
        SyllableViewActivity()
    }
}

}
