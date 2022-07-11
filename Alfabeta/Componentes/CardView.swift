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
    let sectionItemData: SectionItemModel
    init(titulo: String, imagem:String, sectionItemData: SectionItemModel) {
        self.titulo = titulo
        self.imagem = imagem
        self.sectionItemData = sectionItemData
    }
    
    var body: some View {
        NavigationLink(
            destination: SyllableViewActivity(activities:sectionItemData.activities)
        ){
                VStack (alignment: .center, spacing: 8)
                {
            Image(imagem)
                .resizable().aspectRatio(contentMode: .fill)
                .frame(width: 112, height: 112)
                .clipped()
                .clipShape(Circle())
                //b.overlay(Circle())
                //.stroke(Color.blue,lineWidth: 8))
        Text(titulo)
        .font(.title2).foregroundColor(.black).multilineTextAlignment(.center)
        }
                   
        
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(titulo: "Frutas", imagem: "cardteste", sectionItemData: SectionItemModel.initDataToFruits())
}
}

}

