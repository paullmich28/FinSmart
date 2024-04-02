//
//  PlatformListProjection.swift
//  FinSmart
//
//  Created by Paulus Michael on 30/03/24.
//

import SwiftUI

struct PlatformListProjection: View {
	var body: some View {
		VStack {
			ProgressView(value: 3, total: 5)
				.padding(.bottom, 16)
			Text("Platform List")
				.font(.title)
				.fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
				.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
				
			List(platforms) { platform in
				NavigationLink(destination: PlatformDetailProjection(platform: platform)) {
					PlatformRows(platform: platform)
				}
				.listRowBackground(Color.blue10)
			}
			.background(Color.white)
			.listStyle(GroupedListStyle())
			.scrollContentBackground(.hidden)
		}
		.padding()
	}
}

#Preview {
    PlatformListProjection()
}
