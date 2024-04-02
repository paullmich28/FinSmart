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
        HStack {
			Image(systemName: "text.book.closed")
				.padding(.trailing, 6)
            Text(platform.name)
				.font(.title3)
        }
        .padding(.vertical)
    }
}

#Preview {
    PlatformRows(platform: platforms[0])
}
