//
//  SilabaCorretaItemView.swift
//  Alfabeta
//
//  Created by Danielly Santos Lopes da Silva on 18/05/22.
//

import SwiftUI

struct CardSyllableView: View {
    let textButton: String;
    let buttonColor: Color;
    let textColor: Color;
    let toGuess: Bool = false;
    init (textButton: String, toGuess: Bool){
        self.textButton = textButton
        self.buttonColor = toGuess ? Color("Grey -1") : Color("Blue +1")
        self.textColor = toGuess ? Color("Black 0") : Color("White 0")
    }
    var body: some View {
        VStack{
            Button(action: {
                
            }, label: { Text(textButton.uppercased()).bold()
                .padding(27)
                .font(.title)
                .foregroundColor(textColor).multilineTextAlignment(.center)
                .frame(width: 110, height: 104, alignment: .center)
                .background(buttonColor)
                .clipShape(RoundedRectangle(cornerRadius: 8))
                .multilineTextAlignment(.center)
            
            }).buttonStyle(PlainButtonStyle())

    
        }
}

struct CardSyllableView_Previews: PreviewProvider {
    static var previews: some View {
        CardSyllableView(textButton: "lan", toGuess: false)
    }
}

}
