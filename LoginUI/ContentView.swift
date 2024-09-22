//
//  ContentView.swift
//  LoginUI
//
//  Created by MAC on 9/18/24.
//

import SwiftUI

struct ContentView: View {
    
    @State var phoneNumber: String = ""
    @State var pin: String = ""
    @State var isPinVisible = false
    let screenWidth = UIScreen.main.bounds.size.width

    
    var body: some View {
        
        ZStack {
            //            Color.white.ignoresSafeArea()
            
            Image("background")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            
            VStack(alignment: .center){
                Image("kegow_logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 250, height: 150)
                    .aspectRatio(contentMode: .fit)
                VStack(alignment: .leading) {
                    
                    Spacer().frame(height: 10)
                    //                    HStack {
                    Text("Log In")
                        .font(.system(size: 22).weight(.bold))
                        .frame(height: 0)

                    
//                    Spacer().frame(height: 0)
                    Text("Log in to your account")
                        .font(.system(size: 16).weight(.semibold))
                        .foregroundColor(.gray).frame(height: 40)
                    
                    
                    Spacer().frame(height: 20)
                    
                    Text("Phone Number")
                        .foregroundColor(.gray)
                        .frame(height: 20)

                    
                    HStack {
                        Image("visibility-off")
                            .resizable().aspectRatio(contentMode: .fit).frame(height: 20).padding(.horizontal, 12)
                        
                        TextField(
                            "Phone number",
                            text: $phoneNumber
                        )
                        .padding([.horizontal],12)
                        //                        .frame(height: 50)
                        
                        
                        Spacer()
                        
                        Button(action: {
                            self.isPinVisible = !isPinVisible
                            print("work in poetry \(isPinVisible)")
                        }) {
                            Image("visibility-off")
                                .resizable().aspectRatio(contentMode: .fit).frame(height: 20).padding(.horizontal, 12)
                            
                        }
                        
                    }.frame(height: 50) .overlay(RoundedRectangle(cornerRadius: 10).strokeBorder(.gray))
                        .padding(.bottom, 12)
                    
                    
                    
                    Text("PIN")
                        .foregroundColor(.gray)
                        .frame(height: 20)
                    
                    if isPinVisible {
                        HStack
                        {
                            Image("visibility-off")
                                .resizable().aspectRatio(contentMode: .fit).frame(height: 20).padding(.horizontal, 12)
                            
                            TextField(
                                "na gaskia",
                                text: $pin
                            )
                            .padding([.horizontal],12)
                            //                        .frame(height: 50)
                            
                            
                            Spacer()
                            
                            Button(action: {
                                self.isPinVisible = !isPinVisible
                                print("work in poetry \(isPinVisible)")
                            }) {
                                Image("visibility-off")
                                    .resizable().aspectRatio(contentMode: .fit).frame(height: 20).padding(.horizontal, 12)
                                
                            }
                            
                        }.frame(height: 50) .overlay(RoundedRectangle(cornerRadius: 10).strokeBorder(.gray))
                    } else {
                        HStack(alignment: .center) {
                            SecureField("PIN", text: $pin)
                                .padding([.horizontal],12)
                            
                            Button(action: {
                                self.isPinVisible = !isPinVisible
                                print("work in poetry \(isPinVisible)")
                            }) {
                                Image("visibility-off")
                                    .resizable().aspectRatio(contentMode: .fit).frame(height: 20).padding(.horizontal, 12)
                                
                            }
                        }.frame(height: 50) .overlay(RoundedRectangle(cornerRadius: 10).strokeBorder(.gray))
                        
                        HStack(alignment: .center) {
                            Spacer()
                            VStack(alignment: .center) {
                                Text("Forgot PIN?")
                                
                                    .foregroundColor(.green)
                                    .font(.system(size: 14).weight(.bold))
                                    .onTapGesture {}
                                    .padding()
                            }
                            Spacer()
                        }
                        
                        Button(action: { }){
                            Text("Login")
                                .foregroundColor(.white)
                                .font(.system(size: 14))
                                .fontWeight(.bold)
                                .frame(width: screenWidth , height: 52, alignment: .center)
                                .padding(.horizontal, -14)
                        }
                        .background(.green)
                        .foregroundColor(Color.white)
                        .cornerRadius(6)
                        
                
                        
                        HStack(alignment: .center) {
                            Spacer()
                                Text("Don’t have an account? ")
                                .font(.system(size: 14))
                                Text("Sign Up")
                                .font(.system(size: 14).weight(.semibold))
                                .foregroundColor(.green)
                            Spacer()

                        }.padding(.vertical, 20)
                        
                    Image("")

                        
                    }
                    
                    Spacer()
                }.padding(.top, 20)
                    .padding(.leading, 16)
                    .padding(.bottom, 16)
                    .padding(.trailing, 16)
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(Color.white)
                
                
            }
        }
    }
}








struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
