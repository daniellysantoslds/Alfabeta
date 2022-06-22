//
//  SilabaCorretaItemView.swift
//  Alfabeta
//
//  Created by Danielly Santos Lopes da Silva on 18/05/22.
//

import SwiftUI

struct CardSyllableView: View {
    let silabacorreta: String;
    let buttonColor: Color;
    let textColor: Color;
    init (silabacorreta: String, buttonColor: Color, textColor: Color){
        self.silabacorreta = silabacorreta
        self.buttonColor = buttonColor
        self.textColor = textColor
    }
    var body: some View {
        VStack{
            Button(action: {
                
            }, label: { Text(silabacorreta.uppercased()).bold()
                .padding(27)
                .font(.title)
                .foregroundColor(textColor).multilineTextAlignment(.center)
                .frame(width: 110, height: 104, alignment: .center)
                .background(buttonColor)
                .clipShape(RoundedRectangle(cornerRadius: 8))
                .multilineTextAlignment(.center)
            
            })

    
        }
}

struct CardSyllableView_Previews: PreviewProvider {
    static var previews: some View {
        CardSyllableView(silabacorreta: "lan", buttonColor: Color("Blue +1"), textColor: Color("White 0"))
    }
}

}
