//
//  SplashScreen.swift
//  FinSmart
//
//  Created by Paulus Michael on 02/04/24.
//

import SwiftUI

struct SplashScreen: View {
    @State var isActive: Bool = false
    
    var body: some View {
        ZStack{
            if self.isActive{
                OnboardingPage()
            }else{
                Image("Finsmart")
            }
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 2.5) {
                withAnimation {
                    self.isActive = true
                }
            }
        }
    }
}

#Preview {
    SplashScreen()
}
