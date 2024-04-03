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
            VStack{
                Text("Platform List")
                    .font(.title)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
                
                ScrollView {
                    GroupBox {
                        ForEach(platforms) { platform in
                            NavigationLink(destination: PlatformDetail(platform: platform)){
                                PlatformRows(platform: platform)
                                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
                                    .foregroundStyle(Color.black)
                                
                                Image(systemName: "chevron.right")
                                    .foregroundColor(Color.black)
                            }
                            
                            Divider().padding(.vertical, 6)
                        }
                    }
                    .backgroundStyle(Color.white)
                }
            }.padding()
        }
        
    }
}

#Preview {
    PlatformList()
}
