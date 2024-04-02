//
//  LoanRows.swift
//  FinSmart
//
//  Created by Paulus Michael on 01/04/24.
//

import SwiftUI

struct LoanRows: View {
    var loan: Loans
    
    var body: some View {
        NavigationLink(destination:LoanDetails(loan: loan)){
            VStack {
                HStack {
                    VStack (alignment: .leading) {
                        HStack{
                            
                            Text(loan.name)
                                .font(.title2)
                                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            
                            Text("Due : 10 days")
                                .font(.title3)
                        }
                        
                        Text(loan.loanedFrom)
                            .font(.callout)
                            .fontWeight(.semibold)
                        Divider().frame(height: 0.5).overlay(.black)
                        Text("Loan Amount")
                            .font(.subheadline)
                        Text("Rp. \(String(loan.loanAmount.formatted()))")
                            .font(.title3)
                            .fontWeight(.semibold)
                    }
                }
                
                ProgressView(value: 3, total: 12)
                    .tint(Color.primaryBlue)
            }
            .padding()
            .foregroundStyle(Color.black)
            .background(RoundedRectangle(cornerRadius: 10)
                .fill(Color.blue10)
            )
        }
        
    }
}

#Preview {
    LoanRows(loan: loans[0])
}
