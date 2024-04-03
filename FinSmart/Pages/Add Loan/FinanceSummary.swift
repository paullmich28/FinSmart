//
//  FinanceSummary.swift
//  FinSmart
//
//  Created by Paulus Michael on 30/03/24.
//

import SwiftUI

struct FinanceSummary: View {
    var body: some View {
        NavigationStack {
            VStack {
                Text("Finance Summary")
                    .font(.title)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
				ProgressView(value: 1, total: 4)
					.padding(.bottom, 16)
                
                HStack {
                    VStack {
                        Text("Income")
                            .font(.callout)
							.fontWeight(.medium)
                            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .center)
							.foregroundStyle(Color.yellow130)
                        Text("Rp. 5.000.000")
                            .font(.title2)
                            .fontWeight(.semibold)
                            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .center)
							.foregroundStyle(Color.yellow160)
                    }
					
					Divider().frame(maxHeight: 50)
					
                    VStack {
                        Text("Expenses")
                            .font(.callout)
							.fontWeight(.medium)
                            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .center)
							.foregroundStyle(Color.yellow130)
                        Text("Rp. 2.000.000")
                            .font(.title2)
                            .fontWeight(.semibold)
                            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .center)
							.foregroundStyle(Color.yellow160)
                    }
                }
                .padding()
                .background(RoundedRectangle(cornerRadius: 10)
                    .fill(Color.yellow20)
                    .compositingGroup()
                    .shadow(radius: 3)
                )
                
                .padding(.bottom, 12)
                
                VStack {
                    VStack {
                        Text("Your Ongoing Installments")
                            .font(.callout)
							.fontWeight(.medium)
                            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
							.foregroundStyle(Color.yellow130)
                        Text("Rp. 1.400.000")
                            .font(.title2)
                            .fontWeight(.semibold)
                            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
							.foregroundStyle(Color.yellow160)
                    }
                    .padding(.bottom, 16)
                    
                    VStack {
                        HStack {
                            Text("Diamond FreeFire")
								.foregroundStyle(Color.yellow140)
                            Text("Rp. 400.000")
                                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .trailing)
								.foregroundStyle(Color.yellow140)
                        }
                        
                        Divider()
                        
                        HStack {
                            Text("Diamond Mobile Legend")
								.foregroundStyle(Color.yellow140)
                            Text("Rp. 500.000")
                                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .trailing)
								.foregroundStyle(Color.yellow140)
                        }
                        
                        Divider()
                        
                        HStack {
                            Text("Earbuds Pro")
								.foregroundStyle(Color.yellow140)
                            Text("Rp. 500.000")
                                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .trailing)
								.foregroundStyle(Color.yellow140)
                        }
                        
                    }
                }
                .padding()
                .background(RoundedRectangle(cornerRadius: 10)
                    .fill(Color.yellow20)
                    .compositingGroup()
                    .shadow(radius: 3)
                )
                
                .padding(.bottom, 12)
                
                VStack {
                    Text("Net Income")
                        .font(.callout)
						.fontWeight(.medium)
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
						.foregroundStyle(Color.yellow130)
                    Text("Rp. 600.000")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
						.foregroundStyle(Color.yellow160)
                }
                .padding()
                .background(RoundedRectangle(cornerRadius: 10)
                    .fill(Color.yellow20)
                    .compositingGroup()
                    .shadow(radius: 3)
                )
                
                .padding(.bottom, 16)
				
				Spacer()
                
                NavigationLink(destination: PlatformListProjection()) {
                    Text("Start Loan Projection")
                        .font(.headline)
                        .foregroundStyle(Color.white)
                        .buttonStyle(PlainButtonStyle())
                        .padding()
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                        .background(RoundedRectangle(cornerRadius: 30)
                            .fill(Color.primaryBlue)
                            .shadow(radius: 3)
                        )
                }
            }
            .padding()
        }
    }
}

#Preview {
    FinanceSummary()
}
