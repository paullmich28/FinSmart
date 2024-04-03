//
//  FinSmartSmallWidget.swift
//  FinSmart
//
//  Created by Gusti Rizky Fajar on 03/04/24.
//

import SwiftUI

struct FinSmartSmallWidget: View {
    var body: some View {
		VStack {
			Text("iBox - iPhone 5")
				.fontWeight(.semibold)
				.foregroundStyle(Color.blue)
				.padding(.bottom, 10)
			
			Text("Due: 10 days")
				.font(.headline)
				.padding(5)
				.foregroundStyle(Color.blue)
				.background(RoundedRectangle(cornerRadius: 10).stroke(Color.blue, lineWidth: 1.5))
				.padding(.bottom, 12)
			
			HStack {
				Text("Pay")
					.font(.headline)
					.padding(8)
//					.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
				
				Image(systemName: "arrow.right.circle")
					.padding(5)
					.frame(alignment: .trailing)
			}
			.foregroundStyle(Color.white)
			.background(RoundedRectangle(cornerRadius: 10).fill(Color.blue))
		}
    }
}

#Preview {
    FinSmartSmallWidget()
}
