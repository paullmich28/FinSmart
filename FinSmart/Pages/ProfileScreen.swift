//
//  ProfileScreen.swift
//  FinSmart
//
//  Created by Gusti Rizky Fajar on 27/03/24.
//

import SwiftUI
import Charts

struct FinanceData: Identifiable, Equatable {
	var category: String
	var amount: Int
	var id = UUID()
}

let totalFinanceData: [FinanceData] = [
	.init(category: "Total Loans", amount: 20),
	.init(category: "Expenses", amount: 20),
	.init(category: "Remaining Funds", amount: 10)
]

let chartColors: [Color] = [
	Color(.systemOrange),
	Color(.systemBlue),
	Color(.systemGreen)
]

struct ProfileScreen: View {
	var body: some View {
		ScrollView {
			VStack (alignment: .leading) {
				Text("Finance Profile")
					.font(.title2)
				Text("This is your finance slices")
					.font(.footnote)
					.padding(.bottom, 20)
				
				Chart(totalFinanceData) {
					SectorMark (
						angle: .value("Amount", $0.amount),
						innerRadius: .ratio(0.6),
						angularInset: 3.0
					)
					.cornerRadius(10.0)
					.foregroundStyle(by: .value("category", $0.category))
				}
				.compositingGroup()
				.shadow(radius: 3)
				.frame(height: 250)
				.chartForegroundStyleScale(
					domain: totalFinanceData.map {$0.category},
					range: chartColors
				)
				.chartLegend(position: .bottom, alignment: .center, spacing: 20.0)
				.padding(.bottom, 20)
				
				GroupBox {
					VStack (alignment: .leading) {
						HStack {
							Text("Your Income")
								.font(.subheadline)
							Image(systemName: "square.and.pencil")
								.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .trailing)
						}
						.padding(.bottom, 1)
						
						Text("IDR 5.000.000")
							.font(.title2)
                            .fontWeight(.semibold)
						
						Divider().padding(5)
						
						HStack {
							Text("Your Expenses")
								.font(.subheadline)
							Image(systemName: "square.and.pencil")
								.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .trailing)
						}
						.padding(.bottom, 1)
						
						Text("IDR 2.000.000")
							.font(.title2)
                            .fontWeight(.semibold)
        
					}
                    
				}
				.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
				.compositingGroup()
				.shadow(radius: 3)
				.padding(.bottom, 30)
                .backgroundStyle(Color.blue10)
				
				Text("Your Loans")
					.font(.title2)
				Text("This is the list of your loans")
					.font(.footnote)
					.padding(.bottom, 5)
				
				GroupBox {
					VStack (alignment: .leading) {
						HStack {
							Image(systemName: "text.book.closed")
								.resizable()
								.aspectRatio(contentMode: .fit)
								.frame(width: 25)
								.padding(.trailing, 15)
							
							VStack (alignment: .leading) {
								Text("KonohaDana")
                                    .font(.subheadline)
								Text("IDR 1.000.000")
                                    .font(.title3)
                                    .fontWeight(.semibold)
							}
							
							Text("Due in 2 days")
								.font(.callout)
								.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .trailing)
						}
						
						Divider().padding(5)
						
						HStack {
							Image(systemName: "text.book.closed")
								.resizable()
								.aspectRatio(contentMode: .fit)
								.frame(width: 25)
								.padding(.trailing, 15)
							
							VStack (alignment: .leading) {
								Text("AdaKamu")
									.font(.subheadline)
								Text("IDR 1.000.000")
									.font(.title3)
                                    .fontWeight(.semibold)
							}
							
							Text("Due in 10 days")
								.font(.callout)
								.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .trailing)
						}
					}
				}
				.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
				.compositingGroup()
				.shadow(radius: 3)
                .backgroundStyle(Color.blue10)
			}
			.padding()
		}
    }
}

#Preview {
    ProfileScreen()
}
