//
//  ItensSecaoView.swift
//  Alfabeta
//
//  Created by Danielly Santos Lopes da Silva on 17/05/22.
//

import SwiftUI

struct ItemSecaoView: View {
    let titulo: String
    let imagem: String
    init(titulo: String, imagem:String) {
        self.titulo = titulo
        self.imagem = imagem

        
    }
    var body: some View {
        
        
        NavigationLink( destination: AtividadeSilabaView()){
                VStack (alignment: .center, spacing: 8)
                {
            Image(imagem)
                .resizable().aspectRatio(contentMode: .fill)
                .frame(width: 112, height: 112)
                .clipped()
                .clipShape(Circle())
                .overlay(Circle()
                .stroke(Color("Blue 0"),lineWidth: 8))
                    Text(titulo).font(Font.title3.weight(.medium))
                        .font(.title2).foregroundColor(Color("Black -1")).multilineTextAlignment(.center)
        }
                   
        
    }
}

struct ItemSecaoView_Previews: PreviewProvider {
    static var previews: some View {
        ItemSecaoView(titulo: "Frutas", imagem: "capafrutas")
    }
}
    }
