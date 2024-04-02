//
//  TitleAmount.swift
//  FinSmart
//
//  Created by Paulus Michael on 01/04/24.
//

import SwiftUI

struct TitleAmount: View {
	
	@State private var loanTitle: String = ""
	@State private var loanAmount: String = ""
	
	var body: some View {
		NavigationStack {
			VStack {
				ProgressView(value: 2, total: 5)
					.padding(.bottom, 16)
				Text("Loan Overview")
					.font(.title)
					.fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
					.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
				
					.padding(.bottom, 18)
				
				VStack (alignment: .leading) {
					Text("What do you want to use the loan for?")
						.font(.callout)
					TextField("Loan title", text: $loanTitle)
						.disableAutocorrection(true)
						.padding()
						.overlay(
							RoundedRectangle(cornerRadius: 10)
								.stroke(Color.primaryBlue)
					)
				}
				.padding(.bottom, 16)
				
				VStack (alignment: .leading) {
					Text("How much do you want to loan?")
						.font(.callout)
					TextField("Loan amount", text: $loanTitle)
						.disableAutocorrection(true)
						.padding()
						.overlay(
							RoundedRectangle(cornerRadius: 10)
								.stroke(Color.primaryBlue)
					)
				}
				.padding(.bottom, 32)
				
				Spacer()
				
				NavigationLink(destination: PlatformListProjection()) {
					Text("Continue")
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
			}
			.padding()
		}
	}
}

#Preview {
    TitleAmount()
}
