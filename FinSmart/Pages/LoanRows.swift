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
                    VStack {
                        Image(systemName: "text.book.closed")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 40)
                    }
                    .padding(.trailing, 10)
                    
                    VStack (alignment: .leading) {
                        Text(loan.name)
                            .font(.title2)
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        Text(loan.loanedFrom)
                            .font(.callout)
                            .fontWeight(.semibold)
                        Divider().frame(height: 2).overlay(.black)
                        Text("Loan Amount")
                            .font(.subheadline)
                        Text("Rp. \(String(loan.loanAmount.formatted()))")
                            .font(.title3)
                            .fontWeight(.semibold)
                    }
                    
                    VStack {
                        Text("Due in")
                            .font(.title3)
                        Text("2 Days")
                            .font(.title2)
                    }
                    .frame(width: 100.0)
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
