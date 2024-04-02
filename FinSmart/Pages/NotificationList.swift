//
//  NotificationList.swift
//  FinSmart
//
//  Created by Paulus Michael on 30/03/24.
//

import SwiftUI

struct NotificationList: View {
    var body: some View {
        NavigationView {
            VStack (alignment: .leading, spacing: 5) {
                HStack {
                    Text("Your payment due in 10 days.")
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
                    
                    Image(systemName: "trash")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 18, height: 18)
                        .foregroundColor(.red)
                        .font(.title)
                }
                .padding()
                .background(Color(.white))
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
                .cornerRadius(8)
                .shadow(color: .black.opacity(0.2), radius: 4)
                
                HStack {
                    Text("Your payment due in 15 days.")
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
                    
                    Image(systemName: "trash")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 18, height: 18)
                        .foregroundColor(.red)
                        .font(.title)
                }
                .padding()
                .background(Color(.white))
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
                .cornerRadius(8)
                .shadow(color: .black.opacity(0.2), radius: 4)
                
                Spacer()
            }
            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
            .padding()
            .background(.white)
            .scrollContentBackground(.hidden)
            .navigationTitle("Notification")
        }
    }
}

#Preview {
    NotificationList()
}
