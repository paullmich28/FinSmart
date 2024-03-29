//
//  Homepage.swift
//  FinSmart
//
//  Created by Paulus Michael on 29/03/24.
//

import SwiftUI

struct Homepage: View{
    var body: some View{
        VStack(alignment: .leading){
            HStack{
                Spacer()
                Image("NotifIcon")
                    .resizable()
                    .frame(width: 30, height: 30)
                Spacer()
                    .frame(width: 15)
                Image("SettingIcon")
                    .resizable()
                    .frame(width: 30, height: 30)
            }
            
            Spacer()
                .frame(height: 30)
            
            VStack(spacing: 8){
                Text("Hi,")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .fontWeight(.semibold)
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
                
                Text("Please fill your income and expenses to count your loan")
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
            }
            .padding()
            .frame(height: 150)
            .background(.green)
            .clipShape(RoundedRectangle(cornerRadius: 10.0))
            
        }
        .padding([.horizontal], 30)
        .frame(minWidth: 0, maxHeight: .infinity, alignment: .topLeading)
    }
}

#Preview {
    Homepage()
}
