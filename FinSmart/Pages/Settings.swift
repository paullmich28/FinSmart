//
//  Settings.swift
//  FinSmart
//
//  Created by Paulus Michael on 30/03/24.
//

import SwiftUI

struct Settings: View {
    @State var isNotif = false
    var body: some View {
        VStack(alignment: .leading){
            Text("Settings")
                .font(.title)
                .fontWeight(.bold)
            
            Toggle(isOn: $isNotif) {
                Text("Notifications").font(.title3)
            }
            
        }.padding(20)
        Spacer()
    }
}

#Preview {
    Settings()
}
