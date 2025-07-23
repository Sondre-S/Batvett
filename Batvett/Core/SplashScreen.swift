//
//  SplashScreen.swift
//  Batvett
//
//  Created by Sondre Stokkan Spæren on 14/07/2025.
//

import SwiftUI

struct SplashScreen: View {
    
    @State var isActive = false
    
    var body: some View {
        VStack{
            if self.isActive {
                TabBarView()
            } else {
                Image("batvett-logo")
                    .resizable()
                    .scaledToFit()
            }
        }
        .onAppear{
            DispatchQueue.main.asyncAfter(deadline: .now() + 2.5) {
                withAnimation{
                    self.isActive = true
                }
            }
        }
    }
}

#Preview {
    SplashScreen()
}
