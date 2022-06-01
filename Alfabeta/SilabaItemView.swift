//
//  SilabaItemView.swift
//  Alfabeta
//
//  Created by Danielly Santos Lopes da Silva on 18/05/22.
//

import SwiftUI

struct SilabaItemView: View {
    let silaba: String;
    init(silaba: String){
        self.silaba = silaba
        
    }
    
    var body: some View {
        VStack {
        Text(silaba)
                .padding(30)
            
                .font(.largeTitle).foregroundColor(.white).multilineTextAlignment(.center)
                .frame(width: 137, height: 104, alignment: .top)
                .background(.blue)
                .clipShape(RoundedRectangle(cornerRadius: 8))
                .multilineTextAlignment(.center)
        }
       
    }
}

struct SilabaItemView_Previews: PreviewProvider {
    static var previews: some View {
        SilabaItemView(silaba: "BA")
    }
}
