//
//  PlatformListProjection.swift
//  FinSmart
//
//  Created by Paulus Michael on 30/03/24.
//

import SwiftUI

struct PlatformListProjection: View {
	var body: some View {
		NavigationStack {
			VStack {
				Text("Platform List")
					.font(.title)
					.fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
					.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
				ProgressView(value: 2, total: 4)
					.padding(.bottom, 16)
				
				ScrollView {
					GroupBox {
						ForEach(platforms) { platform in
							NavigationLink(destination: PlatformDetailProjection(platform: platform)){
								PlatformRows(platform: platform)
									.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
									.foregroundStyle(Color.black)
								
								Image(systemName: "chevron.right")
									.foregroundColor(Color.black)
							}
							
							Divider().padding(.vertical, 6)
						}
					}
					.backgroundStyle(Color.white)
				}
			}.padding()
		}
	}
}

#Preview {
    PlatformListProjection()
}
