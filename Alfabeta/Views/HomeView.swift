//
//  HomeView.swift
//  Alfabeta
//
//  Created by Danielly Santos Lopes da Silva on 17/05/22.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
        ScrollView(.vertical,showsIndicators: false) {
            VStack(){
            Spacer(minLength: 16)
            Text("Alimentos").font(Font.title.weight(.semibold))
            .foregroundColor(Color("Black -1"))
            .multilineTextAlignment(.center)
                
            HStack(alignment: .center
                   , spacing: 0){
            CardView(titulo: "Frutas", imagem: "cardfrutas", sectionItemData: SectionItemModel.initDataToFruits())
                
            Spacer()
                
                CardView(titulo: "Legumes", imagem: "cardlegumes", sectionItemData: SectionItemModel.initDataToFruits())
            }.padding([.bottom, .horizontal],32)
            
                
            Text("Animais").font(Font.title.weight(.semibold))
            .foregroundColor(Color("Black -1")).multilineTextAlignment(.center)
                
            HStack(alignment: .center
                   , spacing: 0){
                CardView(titulo: "Terrestres", imagem: "cardanimaisterrestres", sectionItemData: SectionItemModel.initDataToFruits())
                
                
            Spacer()
                CardView(titulo: "Marinhos", imagem: "cardanimaismarinhos", sectionItemData: SectionItemModel.initDataToFruits())
            }.padding([.bottom, .horizontal],32)
            
                
            Text("Objetos").font(Font.title.weight(.semibold))
            .foregroundColor(Color("Black -1")).multilineTextAlignment(.center)
                
            HStack(alignment: .center
                   , spacing: 0){
                CardView(titulo: "Gerais", imagem: "cardobjetosgerais", sectionItemData: SectionItemModel.initDataToFruits())
                
            Spacer()
                
                CardView(titulo: "Escolares", imagem: "cardobjetosescolares", sectionItemData: SectionItemModel.initDataToFruits())
            }.padding([.bottom, .horizontal],32)
        }
            .navigationBarTitle("", displayMode:.inline)
            .navigationBarHidden(true)
            
            
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
}
