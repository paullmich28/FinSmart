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
                    .padding(.trailing, 30)
                    
                    VStack (alignment: .leading) {
                        Text(loan.name)
                            .font(.title3)
                        Text(loan.loanedFrom)
                            .font(.callout)
                        Divider().padding(.vertical, 5)
                        Text("Loan Amount")
                            .font(.subheadline)
                        Text("Rp. \(String(loan.loanAmount.formatted()))")
                            .font(.headline)
                    }
                    
                    VStack {
                        Text("Due in")
                            .font(.title3)
                        Text("2 Days")
                            .font(.title)
                    }
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .trailing)
                }
                
                ProgressView(value: 3, total: 12)
            }
            .padding()
            .foregroundStyle(Color.black)
            .background(RoundedRectangle(cornerRadius: 10)
                .fill(Color.white)
            )
        }
        
    }
}

#Preview {
    LoanRows(loan: loans[0])
}
