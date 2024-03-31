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
            }
            .padding([.horizontal], 30)
            
            Spacer()
        }
    }
}

#Preview {
    PlatformDetail(platform: platforms[0])
}
