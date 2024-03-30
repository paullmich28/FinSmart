//
//  LoanDetails.swift
//  FinSmart
//
//  Created by Gusti Rizky Fajar on 29/03/24.
//

import SwiftUI

struct LoanDetails: View {
    var body: some View {
		ScrollView {
			VStack (alignment: .leading) {
				Text("Loan Details")
					.font(.title2)
				Text("This is your loan details")
					.font(.footnote)
					.padding(.bottom, 20)
				
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
				}
				.padding(.bottom, 20)
				.overlay(alignment: .topTrailing) {
					Button(action: {
						
						// Taruh button action di sini when button is pressed
						
					}, label: {
						Image(systemName: "trash")
							.resizable()
							.aspectRatio(contentMode: .fit)
							.frame(maxWidth: .infinity, alignment: .top)
							.frame(width: 25)
							.padding(10)
							.foregroundColor(.red)
					})
				}
				
				GroupBox {
					VStack (alignment: .leading) {
						HStack {
							VStack (alignment: .leading) {
								Text("Loaned from")
									.font(.callout)
								Text("KonohaDana")
									.font(.title3)
							}
							.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
							
							Image(systemName: "text.book.closed")
								.resizable()
								.aspectRatio(contentMode: .fit)
								.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .trailing)
								.frame(width: 30)
						}
						
						Divider().padding(5)
						
						VStack (alignment: .leading) {
							Text("Loan Amount")
								.font(.callout)
							Text("IDR 1.000.000")
								.font(.title3)
						}
						.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
						
						Divider().padding(5)
						
						HStack {
							VStack (alignment: .leading) {
								Text("Start date")
									.font(.callout)
								Text("January 1, 2024")
									.font(.title3)
							}
							.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
							
							Divider().padding(.horizontal, 10)
							
							VStack (alignment: .trailing) {
								Text("Next due date")
									.font(.callout)
								Text("April 1, 2024")
									.font(.title3)
							}
							.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .trailing)
						}
					}
				}
				.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
				.compositingGroup()
				.shadow(radius: 3)
				.padding(.bottom, 10)
				
				GroupBox {
					VStack (alignment: .leading) {
						HStack {
							Text("Used for")
								.font(.callout)
							Image(systemName: "square.and.pencil")
								.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .trailing)
						}
						
						Text("Birthday")
							.font(.title3)
						
						Divider().padding(5)
						
						HStack {
							VStack (alignment: .leading) {
								Text("Installment")
									.font(.callout)
								Text("IDR 89.000")
									.font(.title3)
							}
							.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
							
							Divider().padding(.horizontal, 10)
							
							VStack (alignment: .trailing) {
								Text("For")
									.font(.callout)
								Text("12 Months")
									.font(.title3)
							}
							.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .trailing)
						}
						
						Divider().padding(5)
						
						HStack {
							VStack (alignment: .leading) {
								Text("Has Paid")
									.font(.callout)
								Text("IDR 267.000")
									.font(.title3)
							}
							.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
							
							Divider().padding(.horizontal, 10)
							
							VStack (alignment: .trailing) {
								Text("Remaining")
									.font(.callout)
								Text("IDR 733.000")
									.font(.title3)
							}
							.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .trailing)
						}
					}
				}
				.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
				.compositingGroup()
				.shadow(radius: 3)
				.padding(.bottom, 10)
				
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
				.foregroundStyle(Color.blue)
			}
			.padding()
			.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
		}
    }
}

#Preview {
    LoanDetails()
}
