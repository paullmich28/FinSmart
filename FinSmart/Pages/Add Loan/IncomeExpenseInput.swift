//
//  IncomeExpenseInput.swift
//  FinSmart
//
//  Created by Paulus Michael on 03/04/24.
//

import SwiftUI

struct IncomeExpenseInput: View {
    @State var income: String = ""
    @State var expenses: String = ""
    
    var body: some View {
        VStack{
            VStack (alignment: .leading) {
                Text("Income")
                    .font(.callout)
                TextField("Income", text: $income)
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
                TextField("Expenses", text: $expenses)
                    .disableAutocorrection(true)
                    .padding()
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.primaryBlue)
                    )
            }
            .padding(.bottom, 14)
        }
        .padding()
        .frame(maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .topLeading)
    }
}

#Preview {
    IncomeExpenseInput()
}
