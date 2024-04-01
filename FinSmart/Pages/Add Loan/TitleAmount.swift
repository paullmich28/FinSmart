//
//  TitleAmount.swift
//  FinSmart
//
//  Created by Paulus Michael on 01/04/24.
//

import SwiftUI

struct TitleAmount: View {
    @State private var givenName: String = ""
    @State private var familyName: String = ""
    
    var body: some View {
        VStack(alignment: .leading){
            ProgressView(value: 6, total: 12)
            Text("Please fill the forms")
                .padding([.vertical])
            VStack {
                TextField(
                    "Given Name",
                    text: $givenName
                )
                .disableAutocorrection(true)
                TextField(
                    "Family Name",
                    text: $familyName
                )
                .disableAutocorrection(true)
            }
            .textFieldStyle(.roundedBorder)
            Spacer()
        }
        .padding()
    }
}

#Preview {
    TitleAmount()
}
