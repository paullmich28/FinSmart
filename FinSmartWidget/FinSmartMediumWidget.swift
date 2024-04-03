//
//  FinSmartMediumWidget.swift
//  FinSmart
//
//  Created by Gusti Rizky Fajar on 03/04/24.
//

import SwiftUI

struct FinSmartMediumWidget: View {
    var body: some View {
		VStack {
			VStack {
				HStack {
					Text("iBox - iPhone 15")
						.font(.title3)
						.fontWeight(.semibold)
					Image("FinSmartSmall")
						.resizable()
						.aspectRatio(contentMode: .fit)
						.frame(width: 25)
						.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .trailing)
				}
				
				Text("Kredivo")
					.font(.callout)
					.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
					.padding(.bottom, 10)
			}
			
			HStack {
				Image(systemName: "bookmark")
					.foregroundStyle(Color.blue)
				
				Text("Rp 1.460.000")
					.font(.headline)
					.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
				
				Text("Due: 10 days")
					.font(.caption)
					.padding(5)
					.foregroundStyle(Color.blue)
					.background(RoundedRectangle(cornerRadius: 10).stroke(Color.blue, lineWidth: 1.5))
			}
			.padding(.bottom, 20)
			
			ProgressView(value: 3, total: 12)
				.padding(.horizontal, 5)
		}
    }
}

#Preview {
    FinSmartMediumWidget()
}
