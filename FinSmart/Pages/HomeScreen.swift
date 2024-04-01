//
//  HomeScreen.swift
//  FinSmart
//
//  Created by Gusti Rizky Fajar on 27/03/24.
//

import SwiftUI

struct HomeScreen: View {
    
    let categories = ["Ongoing", "Paid", "Completed"]
    
    var body: some View {
        NavigationStack {
            VStack {
                HStack {
                    Text("FinSmart")
                        .font(.largeTitle)
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
                    
                    NavigationLink(destination: NotificationList()){
                        Image(systemName: "bell")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 20)
                            .padding(.horizontal, 10)
                    }
                    .buttonStyle(PlainButtonStyle())
                    
                    NavigationLink(destination: Settings()){
                        Image(systemName: "gearshape")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 23)
                            .padding(.horizontal, 10)
                    }
                    .buttonStyle(PlainButtonStyle())
                }
                .padding(.bottom, 15)
                
                NavigationLink(destination: ProfileScreen()) {
                    VStack (alignment: .leading) {
                        HStack {
                            Text("Hello!")
                                .font(.title)
                            Image(systemName: "arrow.right")
                                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .trailing)
                        }
                        .padding(.bottom, 15)
                        HStack {
                            Text("Your Income")
                                .font(.title3)
                            Text("IDR 5.000.000")
                                .font(.headline)
                                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .trailing)
                        }
                        
                        Divider().padding(5)
                        
                        HStack {
                            Text("Your Expenses")
                                .font(.title3)
                            Text("IDR 2.000.000")
                                .font(.headline)
                                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .trailing)
                        }
                    }
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 10)
                        .fill(Color.white)
                        .compositingGroup()
                        .shadow(radius: 3)
                    )
                }
                .foregroundStyle(Color.black)
                
                HStack() {
                    ForEach(categories, id: \.self) {filter in
                        Text(filter)
                            .font(.callout)
                            .padding(.horizontal, 20)
                            .padding(.vertical, 3)
                            .background(RoundedRectangle(cornerRadius: 10)
                                .fill(Color.gray).opacity(0.2)
                            )
                    }
                }
                .padding()
                
                ScrollView{
                    ForEach(loans){loan in
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
                }.shadow(radius: 3)
                
            }
            .padding()
            Spacer()
        }
    }
}

#Preview {
    HomeScreen()
}
