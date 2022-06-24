//
//  ContentView.swift
//  LoginKeyChain
//
//  Created by Vishal Bhogal on 13/06/22.
//

import SwiftUI

@available(iOS 16.0, *)
struct ContentView: View {
    @State var emailTextFieldState: String = ""
    @State var emailTextFieldBorderColorState: Color = .gray
    @State var passwordTextFieldState: String = ""
    @State var passwordFieldBorderColorState: Color = .gray
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 40) {
                    VStack(alignment: .leading, spacing: 20) {
                        
                        Text("Log in with one of the following options.")
                            .padding(.top, 20)
                            
                        
                        HStack(alignment: .center, spacing: 20) {
                            Image("icon-google")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 90, height: 40)
                                .padding(.all, 25)
                                .border(.gray, width: 3)
                                .cornerRadius(3)
                            
                            Image(systemName: "applelogo")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 90, height: 40)
                                .padding(.all, 25)
                                .border(.gray, width: 3)
                                .cornerRadius(3)
                        }
                        
                        VStack(alignment: .leading, spacing: 10) {
                            Text("E-mail")
                            
                            TextField("Enter your E-mail Id",
                                      text: $emailTextFieldState)
                            .frame(height: 50)
                            .padding(.leading)
                            .border(emailTextFieldBorderColorState, width: 3)
                            .cornerRadius(5)
                            .onTapGesture {
                                emailTextFieldBorderColorState = Color.blue
                            }
                        }
                        
                        VStack(alignment: .leading, spacing: 10) {
                            Text("Password")
                            
                            TextField("Enter your Password",
                                      text: $passwordTextFieldState)
                            .frame(height: 50)
                            .padding(.leading)
                            .border(passwordFieldBorderColorState, width: 3)
                            .cornerRadius(5)
                            .onTapGesture {
                                passwordFieldBorderColorState = Color.green
                            }
                        }
                        
                    }
                    Button("Log in") {
                        //
                    }
                    .foregroundColor(.white)
                    .frame(width: 290.0)
                    .font(.system(.title, design: .default))
                    .fontWeight(.semibold)
                    .padding(.all, 15.0)
                    .background(Color(hue: 0.655, saturation: 0.672, brightness: 0.64, opacity: 0.915))
                    .cornerRadius(5)
                    
                    HStack {
                        Text("Don't have an account?")
                            .foregroundColor(.gray)
                        
                        Text("Sign Up")
                            .fontWeight(.bold)
                    }
                    
                } .padding(.horizontal, 25)
                    .navigationTitle("Log In")
                    .toolbar {
                        ToolbarItem(placement: .navigationBarLeading) {
                            HStack {
                                Image(systemName: "arrowshape.backward.fill")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .tint(.red)
                                    .frame(width: 15)
                                Text("Back")
                            }
                        }
                    }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    @available(iOS 16.0, *)
    static var previews: some View {
        ContentView()
    }
}
