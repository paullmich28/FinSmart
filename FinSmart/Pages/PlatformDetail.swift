//
//  PlatformDetail.swift
//  FinSmart
//
//  Created by Paulus Michael on 31/03/24.
//

import SwiftUI

struct PlatformDetail: View {
    var platform: Platform
    
    var body: some View {
        Text(platform.name)
    }
}

#Preview {
    PlatformDetail(platform: platforms[0])
}
