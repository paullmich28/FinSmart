//
//  FinanceSummary.swift
//  FinSmart
//
//  Created by Paulus Michael on 30/03/24.
//

import SwiftUI

struct FinanceSummary: View {
    var body: some View {
<<<<<<< HEAD
        NavigationStack{
            ProgressView(value: 1, total: 5).padding()
            VStack{
=======
        NavigationStack {
            VStack {
				ProgressView(value: 1, total: 6)
					.padding(.bottom, 16)
>>>>>>> main
                Text("Finance Summary")
                    .font(.title)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
<<<<<<< HEAD
                
                
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
            
            NavigationLink(destination: TitleAmount()){
                Text("Continue")
                    .font(.title3)
=======
				
				VStack {
					VStack {
						Text("Income")
							.font(.callout)
							.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
						Text("Rp. 5.000.000")
							.font(.title2)
							.fontWeight(.semibold)
							.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
					}
					
					.padding(.bottom, 5)
					
					VStack {
						Text("Expenses")
							.font(.callout)
							.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
						Text("Rp. 2.000.000")
							.font(.title2)
							.fontWeight(.semibold)
							.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
					}
				}
				.padding()
				.background(RoundedRectangle(cornerRadius: 10)
					.fill(Color.blue10)
					.compositingGroup()
					.shadow(radius: 3)
				)
				
				.padding(.bottom, 12)
				
				VStack {
					VStack {
						Text("Your Ongoing Installments")
							.font(.callout)
							.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
						Text("Rp. 1.400.000")
							.font(.title2)
							.fontWeight(.semibold)
							.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
					}
					.padding(.bottom, 16)
					
					VStack {
						HStack {
							Text("Diamond FreeFire")
							Text("Rp. 400.000")
								.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .trailing)
						}
						
						Divider()
						
						HStack {
							Text("Diamond Mobile Legend")
							Text("Rp. 500.000")
								.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .trailing)
						}
						
						Divider()
						
						HStack {
							Text("Earbuds Pro")
							Text("Rp. 500.000")
								.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .trailing)
						}

					}
				}
				.padding()
				.background(RoundedRectangle(cornerRadius: 10)
					.fill(Color.blue10)
					.compositingGroup()
					.shadow(radius: 3)
				)
				
				.padding(.bottom, 12)
				
				VStack {
					Text("Net Income")
						.font(.callout)
						.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
					Text("Rp. 600.000")
						.font(.title2)
						.fontWeight(.semibold)
						.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
				}
				.padding()
				.background(RoundedRectangle(cornerRadius: 10)
					.fill(Color.yellow50)
					.compositingGroup()
					.shadow(radius: 3)
				)
				
				.padding(.bottom, 16)
				
				NavigationLink(destination: TitleAmount()) {
					Text("Start Loan Projection")
						.font(.headline)
						.foregroundStyle(Color.white)
				}
				.buttonStyle(PlainButtonStyle())
				.padding()
				.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
				.background(RoundedRectangle(cornerRadius: 30)
					.fill(Color.primaryBlue)
					.shadow(radius: 3)
				)
>>>>>>> main
            }
            .padding()
			.toolbar {
				ToolbarItem(placement: .navigationBarTrailing) {
					Image(systemName: "x.circle")
						.foregroundStyle(Color.primaryBlue)
				}
			}
        }
    }
}

#Preview {
    FinanceSummary()
}
