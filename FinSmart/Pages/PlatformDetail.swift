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
        VStack {
            Text("Platform Detail")
                .font(.title)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
            
            Spacer()
            
            platform.logo
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 100, height: 100)
            
            Text(platform.name)
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundStyle(Color.yellow170)
            
            Text("OJK: S-000 / NB.000 / 0000")
                .font(.callout)
                .foregroundStyle(Color.yellow170)
                .padding(.bottom, 20)
            
            
            VStack {
                VStack {
                    HStack {
                        VStack {
                            Text("Maximum Limit")
                                .font(.callout)
                                .fontWeight(.medium)
                                .foregroundStyle(Color.yellow130)
                                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .center)
                            Text("Rp. \(String(platform.limit.formatted()))")
                                .font(.title)
                                .fontWeight(.semibold)
                                .foregroundStyle(Color.yellow160)
                                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .center)
                        }
                    }
                }
                
                Divider().padding(.vertical, 10)
                
                VStack {
                    HStack {
                        VStack {
                            Text("Interest")
                                .font(.callout)
                                .fontWeight(.medium)
                                .foregroundStyle(Color.yellow130)
                                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .center)
                            HStack {
                                Text("\(String(platform.interestRate))%")
                                    .font(.title2)
                                    .fontWeight(.semibold)
                                    .foregroundStyle(Color.yellow160)
                                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .center)
                                Text("/ day")
                                    .font(.caption)
                                    .fontWeight(.medium)
                                    .foregroundStyle(Color.yellow160)
                            }
                        }
                        
                        VStack {
                            Text("Admin Fee")
                                .font(.callout)
                                .fontWeight(.medium)
                                .foregroundStyle(Color.yellow130)
                                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .center)
                            Text("\(String(platform.adminFee))%")
                                .font(.title2)
                                .fontWeight(.semibold)
                                .foregroundStyle(Color.yellow160)
                                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .center)
                        }
                        
                        VStack {
                            Text("Late Fee")
                                .font(.callout)
                                .fontWeight(.medium)
                                .foregroundStyle(Color.yellow130)
                                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .center)
                            
                            
                            HStack {
                                Text("\(String(platform.latenessFee))%")
                                    .font(.title2)
                                    .fontWeight(.semibold)
                                    .foregroundStyle(Color.yellow160)
                                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .center)
                                Text("/ month")
                                    .font(.caption)
                                    .foregroundStyle(Color.yellow160)
                            }
                        }
                    }
                }
            }
            .padding()
            .background(RoundedRectangle(cornerRadius: 10)
                .fill(Color.yellow20)
            )
            
            Spacer()
        }
        .padding()
    }
}

#Preview {
    PlatformDetail(platform: platforms[0])
}
