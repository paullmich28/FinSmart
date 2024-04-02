//
//  OnboardingPage.swift
//  FinSmart
//
//  Created by Paulus Michael on 02/04/24.
//

import SwiftUI

struct OnboardingPage: View {
    var body: some View {
        VStack{
            TabView{
                Text("1")
                Text("Hello, World!")
                Text("2")
            }
            .tabViewStyle(.page)
            .indexViewStyle(.page(backgroundDisplayMode: .interactive))
        }
        .background(.yellow50)
    }
}

#Preview {
    OnboardingPage()
}
