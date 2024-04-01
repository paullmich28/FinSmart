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
            ProgressView(value: 3, total: 12)
            
            Text("Please fill the forms")
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
                }.padding([.bottom])
                
                VStack(alignment: .leading){
                    Text("Loan Amount")
                    TextField(
                        "Loan Amount",
                        text: $loanAmount
                    )
                    .disableAutocorrection(true)
                }
                
            }
            .textFieldStyle(.roundedBorder)
            
            Spacer()
            
            NavigationLink(destination: PlatformListProjection()){
                Text("Start Making Loan Projection")
                    .font(.title3)
            }
            .buttonStyle(PlainButtonStyle())
            .padding()
            .background(RoundedRectangle(cornerRadius: 10)
                .fill(.bar)
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
