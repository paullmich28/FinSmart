//
//  FinanceSummary.swift
//  FinSmart
//
//  Created by Paulus Michael on 30/03/24.
//

import SwiftUI

struct FinanceSummary: View {
    var body: some View {
        NavigationStack{
            VStack{
                Text("Finance Summary")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
                
                
                VStack{
                    VStack{
                        Text("Your Income:")
                            .font(.title2)
                            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
                        Text("Rp. 5.000.000")
                            .font(.title3)
                            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
                    }
                    
                    VStack{
                        Text("Your Expenses:")
                            .font(.title2)
                            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
                        Text("Rp. 2.000.000")
                            .font(.title3)
                            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
                    }
                    .padding(.top, 5)
                }
                .padding()
                .background(RoundedRectangle(cornerRadius: 10)
                    .fill(.green)
                    .compositingGroup()
                    .shadow(radius: 3)
                )
                
                VStack{
                    VStack{
                        Text("Your Ongoing loans:")
                            .font(.title2)
                            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
                        
                        HStack{
                            Text("Birthday")
                                .font(.title2)
                            Text("Rp. 1.000.000")
                                .font(.title3)
                                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .trailing)
                        }
                        
                        HStack{
                            Text("Lunch")
                                .font(.title2)
                            Text("Rp. 1.000.000")
                                .font(.title3)
                                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .trailing)
                        }
                    }
                }
                .padding()
                .background(RoundedRectangle(cornerRadius: 10)
                    .fill(.orange)
                    .compositingGroup()
                    .shadow(radius: 3)
                )
            }
            .padding()
            
            Spacer()
        }
    }
}

#Preview {
    FinanceSummary()
}
