//
//  RedirectToIncome.swift
//  FinSmart
//
//  Created by Paulus Michael on 03/04/24.
//

import SwiftUI

struct RedirectToIncome: View {
    var title: String
    var caption: String
    
    var body: some View {
        VStack(alignment: .center){
            RoundedRectangle(cornerRadius: 5.0)
                .fill(.blue)
                .frame(width: 300, height: 300)
                .padding()
            
            VStack(alignment: .leading){
                
                Text(title)
                    .font(.largeTitle)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                
                Text(caption)
            }
            
            NavigationLink(destination: BottomTabView()){
                Text("Get Started")
                    .foregroundColor(.white)
            }
            .buttonStyle(PlainButtonStyle())
            .padding()
            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
            .background(RoundedRectangle(cornerRadius: 30)
                .fill(Color.primaryBlue)
                .shadow(radius: 3)
            )
            
        }
        .padding()
        .frame(maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .topLeading)
    }
}

#Preview {
    RedirectToIncome(title: "Welcome to Finsmart!", caption: "Glad you made it to the bright side! Hopefully, we, Finsmart will be helpful for you to calculate and assess the risks of getting a loan from P2P lenders.")
}
