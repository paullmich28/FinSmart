//
//  LoanDetails.swift
//  FinSmart
//
//  Created by Gusti Rizky Fajar on 29/03/24.
//

import SwiftUI

struct LoanDetails: View {
    var loan: Loans
    
    var body: some View {
        ScrollView {
            VStack (alignment: .leading) {
                HStack (alignment: .center) {
                    Image(systemName: "text.book.closed")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 50)
                        .frame(maxHeight: .infinity, alignment: .topLeading)
                        .padding(.trailing, 10)
                    
                    VStack (alignment: .leading) {
                        Text(loan.name)
                            .font(.title)
                        Text(loan.loanedFrom)
                            .font(.title2)
                            .padding(.bottom, 20)
                    }
                    
                    Spacer()
                    
                    Button(action: {
                        
                        // Taruh button action di sini when button is pressed
                        
                    }, label: {
                        Image(systemName: "trash")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .topTrailing)
                            .frame(width: 30)
                            .padding(10)
                            .foregroundColor(.red)
                    })
                }
                
                VStack {
                    Text("_:(´ཀ`」 ∠):")
                        .font(.largeTitle)
                        .frame(maxWidth: .infinity, alignment: .center)
                }
                .padding(.vertical, 90)
                .background(RoundedRectangle(cornerRadius: 10)
                    .fill(Color.white)
                    .compositingGroup()
                    .shadow(radius: 3)
                )
                .overlay(alignment: .bottom) {
                    ProgressView(value: 3, total: 12)
                        .padding(.horizontal, 30)
                        .padding(.bottom, 15)
                        .tint(Color.primaryBlue)
                }
                .padding(.bottom, 20)
                .padding(.horizontal, 5)
            }
            
            GroupBox {
                VStack (alignment: .leading) {
                    /*
                     HStack {
                     Text("Used for")
                     .font(.callout)
                     Image(systemName: "square.and.pencil")
                     .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .trailing)
                     }
                     
                     Text(loan.name)
                     .font(.title3)
                     
                     Divider().padding(5)
                     
                     */
                    
                    HStack {
                        VStack (alignment: .center) {
                            Text("Amount Left")
                                .font(.callout)
                            Text("IDR 89.000")
                                .font(.title3)
                        }
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .center)
                        
                        Divider().padding(.horizontal, 10)
                        
                        VStack (alignment: .center) {
                            Text("Time Remaining")
                                .font(.callout)
                            Text("\(String(loan.installmentPeriod)) Months")
                                .font(.title3)
                        }
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .center)
                    }
                }
            }
            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
            .compositingGroup()
            .shadow(radius: 3)
            .padding(.bottom, 10)
            .padding(.horizontal, 5)
            .backgroundStyle(Color.yellow70)
            
            GroupBox{
                HStack {
                    VStack (alignment: .center) {
                        Text("Next Payment")
                            .font(.callout)
                        Text(loan.startDate, style: .date)
                            .font(.title3)
                    }
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .center)
                    
                    Divider().padding(.horizontal, 10)
                    
                    VStack (alignment: .center) {
                        Text("Next Due")
                            .font(.callout)
                        Text(loan.startDate, style: .date)
                            .font(.title3)
                    }
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .center)
                }
            }
            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
            .compositingGroup()
            .shadow(radius: 3)
            .padding(.bottom, 10)
            .padding(.horizontal, 5)
            .backgroundStyle(Color.yellow70)
            
            Button(action: {
                
                // Taruh button action di sini when button is pressed
                
            }, label: {
                Text("Mark as paid")
                    .font(.title3)
                    .fontWeight(.semibold)
                    .foregroundStyle(Color.white)
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
            })
            .padding()
            .background(RoundedRectangle(cornerRadius: 30))
            .foregroundStyle(Color.primaryBlue)
        }
        .padding()
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
    }
}


#Preview {
    LoanDetails(loan: loans[0])
}
