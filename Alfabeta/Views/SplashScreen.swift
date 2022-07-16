//
//  SplashScreen.swift
//  Alfabeta /22.
//

import SwiftUI

struct SplashScreen: View {

    @State private var isActive = false
 
    
    var body: some View {
        if isActive {
            ContentView()
        } else {
            
            VStack{
                ZStack{
                    Color.blue.ignoresSafeArea()
                    Image("alfabeta")

                }

                .onAppear{
                    withAnimation(.easeIn(duration: 1.2)){
                    }
                }
            }
                .onAppear{
                    DispatchQueue.main.asyncAfter(deadline: .now() + 1.5){
                        withAnimation {
                            self.isActive = true
                            
                        }
                       
                    }
                }
            

        }
            
        }
       
    }
    


struct SplashScreen_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreen()
    }
}



