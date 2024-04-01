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
                    Text("FinSmart")
                        .font(.largeTitle)
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
                    
                    NavigationLink(destination: NotificationList()){
                        Image(systemName: "bell")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 20)
                            .padding(.horizontal, 10)
                    }
                    .buttonStyle(PlainButtonStyle())
                    
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
                    VStack (alignment: .leading) {
                        HStack {
                            Text("Hello!")
                                .font(.title)
                            Image(systemName: "arrow.right")
                                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .trailing)
                        }
                        .padding(.bottom, 15)
                        HStack {
                            Text("Your Income")
                                .font(.title3)
                            Text("IDR 5.000.000")
                                .font(.headline)
                                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .trailing)
                        }
                        
                        Divider().padding(5)
                        
                        HStack {
                            Text("Your Expenses")
                                .font(.title3)
                            Text("IDR 2.000.000")
                                .font(.headline)
                                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .trailing)
                        }
                    }
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 10)
                        .fill(Color.white)
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
