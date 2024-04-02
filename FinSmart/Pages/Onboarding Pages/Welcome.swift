//
//  Welcome.swift
//  FinSmart
//
//  Created by Paulus Michael on 03/04/24.
//

import SwiftUI

struct Welcome: View {
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
            
        }
        .padding()
        .frame(maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .topLeading)
    }
}

#Preview {
    Welcome(title: "Welcome to Finsmart!", caption: "Glad you made it to the bright side! Hopefully, we, Finsmart will be helpful for you to calculate and assess the risks of getting a loan from P2P lenders.")
}
