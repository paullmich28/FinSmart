//
//  BottomTabView.swift
//  FinSmart
//
//  Created by Gusti Rizky Fajar on 29/03/24.
//

import SwiftUI

struct BottomTabView: View {
    var body: some View {
        NavigationStack{
            TabView() {
                Group {
                    HomeScreen()
                        .tabItem {
                            Label("Manage Loan", systemImage: "doc.plaintext.fill")
                        }
                    
                    FinanceSummary()
                        .tabItem {
                            Label("Add Loan", systemImage: "plus.circle.fill")
                        }
                    
                    PlatformList()
                        .tabItem {
                            Label("Platform List", systemImage: "books.vertical.fill")
                        }
                }
            }
        }
        
    }
}

#Preview {
    BottomTabView()
}
