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
                Welcome(title: "Welcome to Finsmart!", caption: "Glad you made it to the bright side! Hopefully, we, Finsmart will be helpful for you to calculate and assess the risks of getting a loan from P2P lenders.")
                
                Welcome(title: "We are not Pinjol(s)", caption: "First of all, we are not a P2P lender. We simply provide insights about risk assessment and P2P lenders across Indonesia for your consideration.")
                
                Welcome(title: "We Calculate the Risks", caption: "We help you assess and calculate the risks of getting a loan from P2P lenders, such as how much you should borrow and the duration of the installment plan. However, the decision is ultimately up to you!")
                
                RedirectToIncome(title: "We Keep You on Track ", caption: "To avoid unexpected additional fees and late charges, we'll remind you when the due date is approaching.")
            }
            .tabViewStyle(.page)
            .indexViewStyle(.page(backgroundDisplayMode: .interactive))
        }
    }
}

#Preview {
    OnboardingPage()
}
