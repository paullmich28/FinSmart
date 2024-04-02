//
//  PlatformListProjection.swift
//  FinSmart
//
//  Created by Paulus Michael on 30/03/24.
//

import SwiftUI

struct PlatformListProjection: View {
    var body: some View {
        VStack{
            ProgressView(value: 3, total: 5).padding()
            NavigationView{
                List(platforms){platform in
                    NavigationLink(destination: PlatformDetailProjection(platform: platform)){
                        PlatformRows(platform: platform)
                    }
                    .listRowBackground(Color.gray.opacity(0.2))
                }
                .background(.white)
                .scrollContentBackground(.hidden)
                .navigationTitle("P2P List")
            }
            
        }.padding()
        
    }
}

#Preview {
    PlatformListProjection()
}
