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

    
    var body: some View {
        
        ZStack {
//            Color.white.ignoresSafeArea()

            Image("background")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Image("kegow_logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 250, height: 150)
                    .aspectRatio(contentMode: .fit)
                VStack(alignment: .leading) {
                    
                    HStack {
                        Text("Log In")
                            .font(.system(size: 20).weight(.bold))
                        Spacer()
                    }
                   
                    Spacer().frame(height: 10)
                    Text("Log in to your account")
                        .font(.system(size: 16).weight(.bold))
                        .foregroundColor(.gray).frame(height: 50)
                    
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
                            SecureField("", text: $pin)
                                .padding([.horizontal],12)

                            Button(action: {
                                self.isPinVisible = !isPinVisible
                               print("work in poetry \(isPinVisible)")
                            }) {
                                Image("visibility-off")
                                    .resizable().aspectRatio(contentMode: .fit).frame(height: 20).padding(.horizontal, 12)
                                
                            }
                        }.frame(height: 50) .overlay(RoundedRectangle(cornerRadius: 10).strokeBorder(.gray))
                    }
           
                        
                    
                    
//                    HStack(alignment: .center){
//                        SecureField("", text: $password.max(4))
//                            .placeholder(when: password.isEmpty) {
//                                  Text("PIN").foregroundColor(Color(ColorStrings.grey_888888))
//                          }
//                            .foregroundColor(Color(ColorStrings.grey_888888))
//                            .textContentType(.password)
//                            .keyboardType(.default)
//                            .frame(height: 48)
//                            .textFieldStyle(PlainTextFieldStyle())
//                            .padding([.horizontal], 12)
//                            .cornerRadius(4)
//
//                        Image(systemName: "eye.slash")
//                            .resizable()
//                            .scaledToFit()
//                            .frame(width: 20)
//                            .foregroundColor(Color(ColorStrings.grey_888888))
//                            .padding(.horizontal).onTapGesture {
//                                isSecured.toggle()
//                            }
//                    }.frame(width: UIScreen.main.bounds.width - 32, height: 52)
//                        .cornerRadius(6)
//                        .overlay(RoundedRectangle(cornerRadius: 6)
//                            .stroke(Color(ColorStrings.grey_888888), lineWidth: 1))

                        
                    
                    
                    
                    
//                    HStack(alignment: .center){
//                        Image(ImageStrings.nigeria_flag)
//                            .resizable()
//                            .scaledToFit()
//                            .frame(width: 20)
//                            .padding(.horizontal)
//
//                        TextField("", text: $phoneNumber.max(11))
//                            .placeholder(when: phoneNumber.isEmpty) {
//                                  Text("Phone Number").foregroundColor(Color(ColorStrings.grey_888888))
//                          }
//                            .foregroundColor(Color(ColorStrings.grey_888888))
//                            .textContentType(.telephoneNumber)
//                            .keyboardType(.default)
//                            .frame(height: 48)
//                            .textFieldStyle(PlainTextFieldStyle())
//                            .padding([.horizontal], 12)
//
//
//
//
//                    }.frame(width: screenWidth - 32, height: 52)
//                        .cornerRadius(6)
//                        .overlay(RoundedRectangle(cornerRadius: 6)
//                            .stroke(Color(ColorStrings.grey_888888), lineWidth: 1))
                    
//                    TextField("worldwide", text: $username)
////                .foregroundColor(.clear)
//                .background(.clear)
//                .textContentType(UITextContentType.addressCity)
//                        .keyboardType(.default)
//                        .frame(height: 56)
//                        .textFieldStyle(PlainTextFieldStyle())
//                        .padding([.horizontal], 12)
//                        .cornerRadius(18)
//                        .overlay(RoundedRectangle(cornerRadius: 8))
                    
//                    Text(username
                    
//                    @State private var username: String = ""
//                    @FocusState private var emailFieldIsFocused: Bool = false
//
//                    var body: some View {
//                        TextField(
//                            "User name (email address)",
//                            text: $username
//                        )
//                        .focused($emailFieldIsFocused)
//                        .onSubmit {
//                            validate(name: username)
//                        }
//                        .textInputAutocapitalization(.never)
//                        .disableAutocorrection(true)
//                        .border(.secondary)
//
//                        Text(username)
//                            .foregroundColor(emailFieldIsFocused ? .red : .blue)
//                    }
                    
                    
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
