//
//  CardView.swift
//  Alfabeta
//
//  Created by Danielly Santos Lopes da Silva on 31/05/22.
//

import SwiftUI

struct CardView: View {
    let titulo: String
    let imagem: String
    init(titulo: String, imagem:String) {
        self.titulo = titulo
        self.imagem = imagem

        
    }
    var body: some View {
        
        
        NavigationLink( destination: SyllableViewActivity()){
                VStack (alignment: .center, spacing: 8)
                {
            Image(imagem)
                .resizable().aspectRatio(contentMode: .fill)
                .frame(width: 112, height: 112)
                .clipped()
                .clipShape(Circle())
                .overlay(Circle()
                .stroke(Color.blue,lineWidth: 8))
        Text(titulo)
        .font(.title2).foregroundColor(.black).multilineTextAlignment(.center)
        }
                   
        
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(titulo: "Frutas", imagem: "capafrutas")
    }
}
    }

