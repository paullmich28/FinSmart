//
//  HomeScreen.swift
//  FinSmart
//
//  Created by Gusti Rizky Fajar on 27/03/24.
//

import SwiftUI

let userDefaults = UserDefaults.standard

@ViewBuilder
func decide() -> some View{
    if userDefaults.object(forKey: "income") != nil && userDefaults.object(forKey: "expenses") != nil{
        ProfileScreen()
    }else{
        IncomeOnboarding().navigationBarBackButtonHidden(true)
    }
}

@ViewBuilder
func summaryCard() -> some View{
    if userDefaults.object(forKey: "income") != nil && userDefaults.object(forKey: "expenses") != nil{
        HStack {
            VStack(alignment: .center){
                Text("Your Income")
                    .font(.subheadline)
                if let income = userDefaults.object(forKey: "income") as? Int {
                    Text("\(income)")
                        .font(.title3)
                        .fontWeight(.semibold)
                } else {
                    Text("N/A")
                        .font(.title3)
                        .fontWeight(.semibold)
                }
            }
            .frame(maxWidth: .infinity, alignment: .center)
            
            Divider().frame(width: 0.5, height: 50).overlay(.black)
            
            VStack(alignment: .center){
                Text("Your Expenses")
                    .font(.subheadline)
                if let expenses = userDefaults.object(forKey: "expenses") as? Int {
                    Text("\(expenses)")
                        .font(.title3)
                        .fontWeight(.semibold)
                } else {
                    Text("N/A")
                        .font(.title3)
                        .fontWeight(.semibold)
                }
            }.frame(maxWidth: .infinity, alignment: .center)
        }
    }else{
        Text("Please Fill")
            .font(.title2)
            .fontWeight(.semibold)
        
        Text("Your Summary!")
            .font(.title2)
            .fontWeight(.semibold)
    }
}

struct HomeScreen: View {
    @State private var categoriesSelected = "Ongoing"
    var categoriesFilter = ["Ongoing", "Paid", "Completed"]
    
    var body: some View {
        NavigationStack {
            VStack {
                HStack {
                    Text("Manage Loans")
                        .font(.title)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    
                    Spacer()
                    
                    NavigationLink(destination: Settings()){
                        Image(systemName: "gearshape")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 20)
                            .padding(.horizontal, 10)
                    }
                    .buttonStyle(PlainButtonStyle())
                }
                .padding(.bottom, 15)
                
                NavigationLink(destination: decide()) {
                    VStack (alignment: .leading) {
                        // Clutter pak
                        HStack{
                            VStack{
                                Text("This Month")
                                    .fontWeight(.bold)
                                    .font(.title)
                                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
                                Text("Financial Summary")
                                    .fontWeight(.bold)
                                    .font(.title)
                                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
                            }
                            
                            
                            VStack(alignment: .trailing){
                                Image(systemName: "arrow.right")
                            }
                            
                        }
                        
                        Divider().frame(width: 320, height: 0.5).overlay(.black)
                        
                        summaryCard()
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
