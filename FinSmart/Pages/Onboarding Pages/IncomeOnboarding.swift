//
//  IncomeOnboarding.swift
//  FinSmart
//
//  Created by Paulus Michael on 03/04/24.
//

import SwiftUI

struct IncomeOnboarding: View {
    var body: some View {
        NavigationView{
            VStack{
                HStack{
                    NavigationLink(destination: BottomTabView()){
                        Text("Skip")
                    }
                    
                    Spacer()
                }
                
                VStack{
                    Image("VinIncome")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 300, height: 300)
                }.padding(.top, 30)
                
                Spacer()
                
                VStack{
                    Text("Income & Expenses")
                        .font(.title)
                        .fontWeight(.bold)
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
                    
                    Text("We need you to input your income and expenses. It will help us to calculate how much loan and which installment that suits you before taking the loan. Your income & expenses data will be used to calculate the risks. The data that you put will not be share with third party and will be saved locally.")
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
                    
                    Spacer()
                    
                    NavigationLink(destination: IncomeExpenseInput().navigationBarBackButtonHidden(true)){
                        Text("Start Assessment")
                            .font(.title3)
                            .foregroundStyle(.white)
                            .fontWeight(.semibold)
                            .buttonStyle(PlainButtonStyle())
                            .padding()
                            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                            .background(RoundedRectangle(cornerRadius: 30)
                                .fill(Color.primaryBlue)
                                .shadow(radius: 3)
                            )
                    }
                }
            }
            .padding()
            .frame(maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .topLeading)
        }
    }
}

#Preview {
    IncomeOnboarding()
}
