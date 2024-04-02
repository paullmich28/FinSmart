//
//  HomeScreen.swift
//  FinSmart
//
//  Created by Gusti Rizky Fajar on 27/03/24.
//

import SwiftUI

struct HomeScreen: View {
    @State private var categoriesSelected = "Ongoing"
    var categoriesFilter = ["Ongoing", "Paid", "Completed"]
    
    var body: some View {
        NavigationStack {
            VStack {
                HStack {
                    Spacer()
                    
//                    NavigationLink(destination: NotificationList()){
//                        Image(systemName: "bell")
//                            .resizable()
//                            .aspectRatio(contentMode: .fit)
//                            .frame(width: 20)
//                            .padding(.horizontal, 10)
//                    }
//                    .buttonStyle(PlainButtonStyle())
                    
                    NavigationLink(destination: Settings()){
                        Image(systemName: "gearshape")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 23)
                            .padding(.horizontal, 10)
                    }
                    .buttonStyle(PlainButtonStyle())
                }
                .padding(.bottom, 15)
                
                NavigationLink(destination: ProfileScreen()) {
                    VStack (alignment: .center) {
                        // Clutter pak
                        HStack{
                            Text("This Month Financial Summary")
                                .fontWeight(.bold)
                                .font(.title)
                                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
                            
                            VStack(alignment: .trailing){
                                Image(systemName: "arrow.right")
                            }
                            
                        }
                        
                        Divider().frame(width: 320, height: 2).overlay(.black)
                        
                        HStack {
                            VStack(alignment: .center){
                                Text("Your Income")
                                    .font(.subheadline)
                                Text("IDR 5.000.000")
                                    .font(.title3)
                                    .fontWeight(.semibold)
                            }
                            .frame(maxWidth: .infinity, alignment: .center)
                            
                            Divider().frame(width: 2, height: 50).overlay(.black)
                            
                            VStack(alignment: .center){
                                Text("Your Expenses")
                                    .font(.subheadline)
                                Text("IDR 2.000.000")
                                    .font(.title3)
                                    .fontWeight(.semibold)
                            }.frame(maxWidth: .infinity, alignment: .center)
                            
                        }
                    }
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 10)
                        .fill(Color.yellow70)
                        .compositingGroup()
                        .shadow(radius: 3)
                    )
                }
                .foregroundStyle(Color.black)
                
                HStack() {
                    Picker("Selected Filter", selection: $categoriesSelected) {
                        ForEach(categoriesFilter, id: \.self) {
                            Text($0)
                        }
                    }
                    .pickerStyle(.segmented)
                }
                .padding()
                
                ScrollView{
                    ForEach(loans){loan in
                        LoanRows(loan: loan)
                    }
                }
                .shadow(radius: 3)
            }
            .padding()
            
            Spacer()
        }
    }
}

#Preview {
    HomeScreen()
}
