//
//  PlatformList.swift
//  FinSmart
//
//  Created by Gusti Rizky Fajar on 29/03/24.
//

import SwiftUI

struct PlatformList: View {
    var body: some View {
        NavigationView{
            List(platforms){platform in
                NavigationLink(destination: PlatformDetail(platform: platform)){
                    PlatformRows(platform: platform)
                }
                .listRowBackground(Color.gray.opacity(0.2))
            }
            .background(.white)
            .scrollContentBackground(.hidden)
            .navigationTitle("P2P List")
        }
    }
}

#Preview {
    PlatformList()
}
