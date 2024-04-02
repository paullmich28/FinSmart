//
//  PlatformDetailProjection.swift
//  FinSmart
//
//  Created by Paulus Michael on 01/04/24.
//

import SwiftUI

struct PlatformDetailProjection: View {
    var platform: Platform
    
	var body: some View {
		NavigationStack {
			VStack {
				ProgressView(value: 3, total: 5)
					.padding(.bottom, 16)
				
				RoundedRectangle(cornerRadius: 5.0)
					.fill(Color.yellow50)
					.frame(width: 200, height: 200)
					.padding()
				
				Text(platform.name)
					.font(.title)
					.fontWeight(.bold)
				
				Text("OJK: S-000 / NB.000 / 0000")
					.font(.callout)
					.padding(.bottom, 20)
				
				
				VStack {
					VStack {
						HStack {
							VStack {
								Text("Interest Rate")
									.font(.callout)
									.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .center)
								Text("\(String(platform.interestRate))% / DAY")
									.font(.title2)
									.fontWeight(.semibold)
									.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .center)
							}
							
							VStack {
								Text("Limit")
									.font(.callout)
									.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .center)
								Text("Rp. \(String(platform.limit.formatted()))")
									.font(.title2)
									.fontWeight(.semibold)
									.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .center)
							}
						}
					}
					
					Divider()
					
					VStack {
						HStack {
							VStack {
								Text("Admin Fee")
									.font(.callout)
									.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .center)
								Text("\(String(platform.adminFee))%")
									.font(.title2)
									.fontWeight(.semibold)
									.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .center)
							}
							
							VStack {
								Text("Lateness Fee")
									.font(.callout)
									.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .center)
								Text("\(String(platform.latenessFee))% / MONTH")
									.font(.title2)
									.fontWeight(.semibold)
									.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .center)
							}
						}
					}
				}
				.padding()
				.background(RoundedRectangle(cornerRadius: 10)
					.fill(Color.yellow50)
				)
				
				/*
				VStack{
					Text("Interest Rate:")
						.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
						.font(.title3)
					Text("\(String(platform.interestRate))% each day")
						.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
						.font(.title3)
						.fontWeight(.semibold)
					
					Text("Administration Fee:")
						.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
						.font(.title3)
						.padding([.top])
					Text("\(String(platform.adminFee))%")
						.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
						.font(.title3)
						.fontWeight(.semibold)
					
					Text("Limit:")
						.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
						.font(.title3)
						.padding([.top])
					Text("Rp. \(String(platform.limit.formatted()))")
						.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
						.font(.title3)
						.fontWeight(.semibold)
					
					Text("Lateness Fee:")
						.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
						.font(.title3)
						.padding([.top])
					Text("\(String(platform.latenessFee))% each month")
						.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
						.font(.title3)
						.fontWeight(.semibold)
				}
				 */
				
				Spacer()
				
				NavigationLink(destination: StartDateDuration()) {
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
    PlatformDetailProjection(platform: platforms[0])
}
