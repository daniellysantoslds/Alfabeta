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
            Text("Alimentos").font(Font.title.weight(.semibold))
            .foregroundColor(Color("Black -1"))
            .multilineTextAlignment(.center)
                
            HStack(alignment: .center
                   , spacing: 0){
            CardView(titulo: "Frutas", imagem: "capafrutas", sectionItemData: SectionItemModel.initDataToFruits())
                
            Spacer()
                
                CardView(titulo: "Legumes", imagem: "capalegumes", sectionItemData: SectionItemModel.initDataToFruits())
            }.padding([.bottom, .horizontal],32)
            
                
            Text("Animais").font(Font.title.weight(.semibold))
            .foregroundColor(Color("Black -1")).multilineTextAlignment(.center)
                
            HStack(alignment: .center
                   , spacing: 0){
                CardView(titulo: "Terrestres", imagem: "capaanimaisterrestres", sectionItemData: SectionItemModel.initDataToFruits())
                
                
            Spacer()
                CardView(titulo: "Marinhos", imagem: "capaanimaismarinhos", sectionItemData: SectionItemModel.initDataToFruits())
            }.padding([.bottom, .horizontal],32)
            
                
            Text("Objetos").font(Font.title.weight(.semibold))
            .foregroundColor(Color("Black -1")).multilineTextAlignment(.center)
                
            HStack(alignment: .center
                   , spacing: 0){
                CardView(titulo: "Gerais", imagem: "capaobjetosgerais", sectionItemData: SectionItemModel.initDataToFruits())
                
            Spacer()
                
                CardView(titulo: "Escolares", imagem: "capaobjetosescolares", sectionItemData: SectionItemModel.initDataToFruits())
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