//
//  StartDateDuration.swift
//  FinSmart
//
//  Created by Nathanael Juan Gauthama on 02/04/24.
//

import SwiftUI

struct StartDateDuration: View {
	
    @State private var startDate: String = ""
    @State private var duration: Int = 0
    @State private var customDuration: Int = 0
	
	@State private var loanTitle: String = ""
	@State private var loanAmount: String = ""
    
    var body: some View {
        NavigationStack {
            VStack{
                ProgressView(value: 3, total: 3)
                
                Text("Loan Information")
                    .padding([.vertical])
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .fontWeight(.bold)
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
				
					.padding(.bottom, 16)
                
				VStack (alignment: .leading) {
					Text("What do you want to use the loan for?")
						.font(.callout)
					TextField("Loan title", text: $loanTitle)
						.disableAutocorrection(true)
						.padding()
						.overlay(
							RoundedRectangle(cornerRadius: 10)
								.stroke(Color.primaryBlue)
					)
				}
				.padding(.bottom, 14)
				
				VStack (alignment: .leading) {
					Text("How much do you want to loan?")
						.font(.callout)
					TextField("Loan amount", text: $loanTitle)
						.disableAutocorrection(true)
						.padding()
						.overlay(
							RoundedRectangle(cornerRadius: 10)
								.stroke(Color.primaryBlue)
					)
				}
				.padding(.bottom, 26)
				
                VStack(alignment: .leading) {
                    VStack(alignment: .leading){
                        DatePicker(selection: /*@START_MENU_TOKEN@*/.constant(Date())/*@END_MENU_TOKEN@*/,  displayedComponents:  [.date], label: { Text("Start Date") })
                            .datePickerStyle(.compact)
                    }
					.padding()
					.overlay(
						RoundedRectangle(cornerRadius: 10)
							.stroke(Color.primaryBlue)
					)
					.padding([.bottom])
                    
                    HStack(){
                        Text("Loan Duration")
                        Spacer()
                        Picker(selection: $duration, label: /*@START_MENU_TOKEN@*/Text("Picker")/*@END_MENU_TOKEN@*/) {
                            Text("None").tag(0)
                            Text("1 Month").tag(1)
                            Text("3 Months").tag(2)
                            Text("6 Months").tag(3)
                            Text("12 Months").tag(4)
    //                        Text("Choose...").tag(99)
                        }
                    }.padding()
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
							.stroke(Color.primaryBlue)
                    )
    //                VStack(alignment: .leading){
    //                    Text("Custom Loan Duration")
    //                    TextField("Custom Loan Duration", value: $custom)
    //                }.padding([.bottom])
                    
                }
                .textFieldStyle(.roundedBorder)
                
                Spacer()
                
                NavigationLink(destination: ProjectionResult()){
                    Text("Continue")
                        .font(.title3)
                        .foregroundStyle(.white)
                        .fontWeight(.semibold)
                        .buttonStyle(PlainButtonStyle())
                        .padding()
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                        .background(RoundedRectangle(cornerRadius: 30)
                            .fill(Color.primaryBlue)
                            .shadow(radius: 3)
                        )
                }
            }
            .padding()
        }
    }
}

#Preview {
    StartDateDuration()
}
