//
//  PlatformRows.swift
//  FinSmart
//
//  Created by Paulus Michael on 31/03/24.
//

import SwiftUI

struct PlatformRows: View {
    var platform: Platform
    
    var body: some View {
        HStack{
            Text(platform.name)
                .font(.title2)
        }
        .padding([.vertical])
    }
}

#Preview {
    PlatformRows(platform: platforms[0])
}
