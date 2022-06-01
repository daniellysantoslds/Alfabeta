//
//  ImagemAtividadeView.swift
//  Alfabeta
//
//  Created by Danielly Santos Lopes da Silva on 18/05/22.
//

import SwiftUI


struct ActivityImageView: View {
    let imagematividade: String;
    init(imagematividade: String){
        self.imagematividade = imagematividade
    }
    
    
    var body: some View {
        VStack {
            Image(imagematividade)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 351, height: 162)
                .clipped()
            
        }
      
    }
}

struct ActivityImageView_Previews: PreviewProvider {
    static var previews: some View {
        ActivityImageView(imagematividade: "atividademelancia")
    }
}
