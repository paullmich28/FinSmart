//
//  IncomeExpenseInput.swift
//  FinSmart
//
//  Created by Paulus Michael on 03/04/24.
//

import SwiftUI

struct IncomeExpenseInput: View {
    let userDefaults = UserDefaults.standard
    let numberFormatter: NumberFormatter = {
        let formatter = NumberFormatter()
        formatter.numberStyle = .none
        formatter.zeroSymbol  = ""
        return formatter
    }()
    
    @State private var showAlert = false
    @State private var navigateToNextPage = false
    @State var income: Int = 0
    @State var expenses: Int = 0
    
    var body: some View {
        NavigationStack{
            VStack{
                HStack{
                    NavigationLink(destination: BottomTabView().navigationBarBackButtonHidden(true)){
                        Text("Skip")
                    }
                    
                    Spacer()
                }
                
                VStack{
                    Text("Income & Expenses")
                        .font(.title)
                        .fontWeight(.bold)
                }
                .padding(.vertical, 10)
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
                
                Divider().padding(.bottom)
                
                VStack (alignment: .leading) {
                    Text("Income")
                        .font(.callout)
                    TextField("Income", value: $income, formatter: numberFormatter)
                        .disableAutocorrection(true)
                        .padding()
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.primaryBlue)
                        )
                }
                .padding(.bottom, 14)
                
                VStack (alignment: .leading) {
                    Text("Expenses")
                        .font(.callout)
                    TextField("Expenses", value: $expenses, formatter: numberFormatter)
                        .disableAutocorrection(true)
                        .padding()
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.primaryBlue)
                        )
                }
                .padding(.bottom, 14)
                
                Spacer()
                
                Button("Continue") {
                    if income <= 0 && expenses <= 0{
                        showAlert = true
                    }else{
                        userDefaults.set(income, forKey: "income")
                        userDefaults.set(expenses, forKey: "expenses")
                        userDefaults.synchronize()
                        
                        navigateToNextPage = true
                    }
                    
                }
                .alert(isPresented: $showAlert) {
                    Alert(
                        title: Text("Please Fill Your Income and Expenses"),
                        message: Text("You haven't filled your income and your expenses")
                    )
                }
                .background(
                    NavigationLink(
                        destination: BottomTabView().navigationBarBackButtonHidden(true),
                        isActive: $navigateToNextPage,
                        label: { EmptyView() }
                    )
                )
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
            .padding()
            .frame(maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .topLeading)
        }
        
    }
}

#Preview {
    IncomeExpenseInput()
}
