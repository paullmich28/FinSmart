//
//  PlatformDetailProjection.swift
//  FinSmart
//
//  Created by Paulus Michael on 01/04/24.
//

import SwiftUI

struct PlatformDetailProjection: View {
    var platform: Platform
    
    var body: some View {
        VStack{
            RoundedRectangle(cornerRadius: 5.0)
                .fill(.blue)
                .frame(width: 200, height: 200)
                .padding()
            
            Text(platform.name)
                .font(.title)
                .padding([.bottom])
            
            VStack{
                Text("Interest Rate:")
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
                    .font(.title3)
                Text("\(String(platform.interestRate))% each day")
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
                    .font(.title3)
                    .fontWeight(.semibold)
                
                Text("Administration Fee:")
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
                    .font(.title3)
                    .padding([.top])
                Text("\(String(platform.adminFee))%")
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
                    .font(.title3)
                    .fontWeight(.semibold)
                
                Text("Limit:")
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
                    .font(.title3)
                    .padding([.top])
                Text("Rp. \(String(platform.limit.formatted()))")
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
                    .font(.title3)
                    .fontWeight(.semibold)
                
                Text("Lateness Fee:")
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
                    .font(.title3)
                    .padding([.top])
                Text("\(String(platform.latenessFee))% each month")
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
                    .font(.title3)
                    .fontWeight(.semibold)
                
                
				NavigationLink(destination: BottomTabView().navigationBarBackButtonHidden(true)){
                    Text("Start making your projection")
                        .font(.title3)
                        .fontWeight(.semibold)
                }
                .buttonStyle(PlainButtonStyle())
                .padding()
                .background(RoundedRectangle(cornerRadius: 10)
                    .fill(.bar)
                    .shadow(radius: 3)
                )
            }
            
            Spacer()
        }.padding()
    }
}

#Preview {
    PlatformDetailProjection(platform: platforms[0])
}
