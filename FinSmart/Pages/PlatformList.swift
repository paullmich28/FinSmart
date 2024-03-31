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
                PlatformRows(platform: platform)
            }
            .navigationTitle("P2P List")
        }
    }
}

#Preview {
    PlatformList()
}
