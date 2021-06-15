//
//  Onboarding.swift
//  Cash App
//
//  Created by Cas on 15/06/2021.
//

import SwiftUI

struct PhoneNumberOnboardingView: View {
    @State private var email: String  = ""
    @State private var phone : String = ""

    var body: some View {
        GeometryReader { geometry in
            VStack (alignment:.leading) {
                HStack (alignment: .center, spacing: nil, content: {
                    Spacer()
                    Text("?")
                        .bold(size:20)
                })
                .padding()
                
                Text("Enter your phone number")
                    .medium(size: 18)
                
                
                TextField("(+233) 54 517 9957",text: $email)
                    .padding(.top, 10)
                    .font(.custom("CashMarket-RegularRounded", size:17))
                    .ignoresSafeArea(.keyboard, edges: .bottom)
                
               
                Text("By entering your phone number and tapping Next, you agree to the Terms")
                    .book(size: 12)
                    .foregroundColor(.gray)
                    .padding(.top, 10)
                    
                
                Spacer()

                HStack {
                    Button(action:{
                        withAnimation{
                            
                        }
                    })
                    {
                        Text("Use Email")
                            .medium(size: 16)
                            .padding(12)
                            .foregroundColor(.white)
                            .frame(maxWidth:.infinity)
                        
                    }
                    .background(Color.gray)
                    .cornerRadius(30)
                    Spacer()
 
                    NavigationLink(
                        destination: ContentView()
                    ) {
                        Text("Next")
                            .medium(size: 16)
                            .padding(12)
                            .foregroundColor(.white)
                            .frame(maxWidth:.infinity)
                    }
                    .background(Color.green)
                    .cornerRadius(30)
                }
                
                .padding(.bottom, 20)
            }
        }
        .padding(.horizontal,20)
    }
}

struct PhoneNumberOnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            PhoneNumberOnboardingView()
                .navigationBarHidden(true)
        }
    }
}