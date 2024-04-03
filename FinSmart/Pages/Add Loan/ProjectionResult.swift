//
//  ProjectionResult.swift
//  FinSmart
//
//  Created by Gusti Rizky Fajar on 03/04/24.
//

import SwiftUI

struct ProjectionResult: View {
    var body: some View {
		NavigationStack {
			VStack {
				RoundedRectangle(cornerRadius: 10)
					.fill(Color.yellow20)
					.frame(width: 200, height: 200)
					.padding(.bottom, 10)
				
				Text("You can apply for your loan!")
					.font(.custom("SF Pro Rounded", size: 28))
					.fontWeight(.semibold)
					.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .center)
				
					.padding(.bottom, 18)
				
				VStack {
					HStack {
						VStack {
							Text("Duration")
								.font(.callout)
								.fontWeight(.medium)
								.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .center)
								.foregroundStyle(Color.yellow130)
							Text("3 Months")
								.font(.title2)
								.fontWeight(.semibold)
								.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .center)
								.foregroundStyle(Color.yellow160)
						}
						
						Divider().frame(maxHeight: 40)
						
						VStack {
							Text("Installment")
								.font(.callout)
								.fontWeight(.medium)
								.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .center)
								.foregroundStyle(Color.yellow130)
							Text("Rp. 683.000")
								.font(.title2)
								.fontWeight(.semibold)
								.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .center)
								.foregroundStyle(Color.yellow160)
						}
					}
					
					Divider()
					
					VStack {
						Text("Net Loan")
							.font(.callout)
							.fontWeight(.medium)
							.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .center)
							.foregroundStyle(Color.yellow130)
						Text("Rp. 1.980.000")
							.font(.title2)
							.fontWeight(.semibold)
							.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .center)
							.foregroundStyle(Color.yellow160)
					}
					
					Divider()
					
					VStack {
						Text("Total to be Paid")
							.font(.callout)
							.fontWeight(.medium)
							.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .center)
							.foregroundStyle(Color.yellow130)
						Text("Rp. 2.079.000")
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
				
				.padding(.bottom, 16)
				
				VStack {
					Text("Remaining Funds")
						.font(.callout)
						.fontWeight(.medium)
						.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .center)
						.foregroundStyle(Color.yellow130)
					Text("Rp. 1.297.000")
						.font(.title2)
						.fontWeight(.semibold)
						.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .center)
						.foregroundStyle(Color.yellow160)
				}
				.padding()
				.background(RoundedRectangle(cornerRadius: 10)
					.fill(Color.yellow20)
					.compositingGroup()
					.shadow(radius: 3)
				)
				
				Spacer()
				
				NavigationLink(destination: StartDateDuration()){
					Text("Save")
						.font(.title3)
						.foregroundStyle(.white)
						.fontWeight(.semibold)
						.buttonStyle(PlainButtonStyle())
						.padding()
						.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
						.background(RoundedRectangle(cornerRadius: 30)
							.fill(Color.yellow90)
							.shadow(radius: 3)
						)
				}
			}
			.padding()
			.toolbar {
				ToolbarItem(placement: .topBarTrailing)  {
					Image(systemName: "x.circle")
						.foregroundStyle(Color.blue)
				}
			}
		}
	}
}

#Preview {
    ProjectionResult()
}
