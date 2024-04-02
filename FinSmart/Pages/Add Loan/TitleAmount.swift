//
//  TitleAmount.swift
//  FinSmart
//
//  Created by Paulus Michael on 01/04/24.
//

import SwiftUI

struct TitleAmount: View {
    @State private var loanTitle: String = ""
    @State private var loanAmount: String = ""
    
    var body: some View {
        VStack{
            ProgressView(value: 2, total: 5)
            
            Text("Loan Overview")
                .padding([.vertical])
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .fontWeight(.bold)
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
            
            VStack {
                VStack(alignment: .leading){
                    Text("Loan Title")
                    TextField(
                        "Loan Title",
                        text: $loanTitle
                    )
                    .disableAutocorrection(true)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(.blue)
                    )
                
                }.padding([.bottom])
                
                VStack(alignment: .leading){
                    Text("Loan Amount")
                    TextField(
                        "Loan Amount",
                        text: $loanAmount
                    )
                    .disableAutocorrection(true)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(.blue)
                    )
                }
                
            }
            .textFieldStyle(.roundedBorder)
            
            Spacer()
            
            NavigationLink(destination: PlatformListProjection()){
                Text("Continue")
                    .font(.title3)
                    .foregroundColor(.white)
                    .fontWeight(.semibold)
            }
            .buttonStyle(PlainButtonStyle())
            .padding()
            .background(RoundedRectangle(cornerRadius: 10)
                .fill(.primaryBlue)
                .shadow(radius: 3)
            )
            .offset(y: -50.0)
        }
        .padding()
    }
}

#Preview {
    TitleAmount()
}
