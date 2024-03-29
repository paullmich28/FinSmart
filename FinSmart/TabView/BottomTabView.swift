//
//  BottomTabView.swift
//  FinSmart
//
//  Created by Gusti Rizky Fajar on 29/03/24.
//

import SwiftUI

struct BottomTabView: View {
    var body: some View {
		TabView {
			Group {
				HomeScreen()
					.tabItem {
						Label("Home", systemImage: "house")
					}
				
				Text("Add Loan Page")
					.tabItem {
						Label("Add Loan", systemImage: "plus")
					}
				
				PlatformList()
					.tabItem {
						Label("Platform List", systemImage: "books.vertical")
					}
			}
		}
    }
}

#Preview {
    BottomTabView()
}
