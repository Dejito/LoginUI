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

            Image("background")
                .resizable().aspectRatio(contentMode: .fill)
                .edgesIgnoringSafeArea(.all)
            VStack(alignment: .leading) {
                KegowLogo()
                VStack(alignment: .leading) {
                    Group {
                        Spacer().frame(height: 15)
                        Text("Log In")
                            .font(.system(size: 22).weight(.bold))
                            .frame(height: 0)

                        Text("Log in to your account")
                            .font(.system(size: 16).weight(.semibold))
                            .foregroundColor(.gray).frame(height: 40)

                        Spacer().frame(height: 20)
                        Text("Phone Number")
                            .foregroundColor(.gray)
                            .frame(height: 20)
    //
    //
                        HStack {
                            Image("phone_icon")
                                .resizable().aspectRatio(contentMode: .fit).frame(height: 20).padding(.leading, 12)

                            TextField(
                                "Phone number",
                                text: $phoneNumber
                            )
                            .padding([.horizontal], 5)


                        }.frame(height: 50) .overlay(RoundedRectangle(cornerRadius: 10).strokeBorder(.gray))
                            .padding(.bottom, 12)



                        Text("PIN")
                            .foregroundColor(.gray)
                            .frame(height: 20)

                        PinTextField(
                            isPinVisible: isPinVisible, pin: pin
                        )
                    }
             
                    
//                        HStack(alignment: .center) {
//                            Spacer()
//                            VStack(alignment: .center) {
//                                Text("Forgot PIN?")
//
//                                    .foregroundColor(.green)
//                                    .font(.system(size: 14).weight(.bold))
//                                    .onTapGesture {}
//                                    .padding()
//                            }
//                            Spacer()
//                        }
//
//                        Button(action: { }){
//                            Text("Login")
//                                .foregroundColor(.white)
//                                .font(.system(size: 14))
//                                .fontWeight(.bold)
//                                .frame(width: screenWidth , height: 52, alignment: .center)
//                                .padding(.horizontal, -14)
//                        }
//                        .background(.green)
//                        .foregroundColor(Color.white)
//                        .cornerRadius(6)
//
//                        DividerWithText()
//                            .padding(.vertical, 10)
//
//
//                        HStack(alignment: .center) {
//                            Spacer()
//                            Image("biometric")
//                                .resizable()
//                                .frame(width: 55, height: 55)
//                            Spacer()
//                        }
//
//                        HStack(alignment: .center) {
//                            Spacer()
//                                Text("Don’t have an account? ")
//                                .font(.system(size: 14))
//                                Text("Sign Up")
//                                .font(.system(size: 14).weight(.semibold))
//                                .foregroundColor(.green)
//                            Spacer()
//
//                        }.padding(.vertical, 20)
//
//
//
//                        HStack {
//                            Spacer()
//                            Image("intercom")
//                                .resizable()
//                                .frame(width: 50, height: 50)
//
//                        }
//
//
//                    }
//
                    Spacer()
                }
                .padding(16)
                    .padding([.horizontal, .leading, .trailing], 12)
////                    .padding(.top, 20)
////                    .padding(.leading, 16)
////                    .padding(.bottom, 16)
////                    .padding(.trailing, 16)
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(Color.white)
////                    .overlay(RoundedRectangle(cornerRadius: 10).strokeBorder(.gray))                    //this is where you'd apply rounded corner curve  to
////
            }
        }
    }
}


struct PinTextField: View {
    @State var isPinVisible: Bool
    @State var pin: String
    
    var body: some View {
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
            
        }
    }
}
    struct DividerWithText: View {
        
        var body: some View {
            HStack {
                line
                Text("or log in with")
                    .foregroundColor(.gray)
                    .font(.caption)
                    .padding(.horizontal, 5)
                line
            }
        }
        
        var line: some View {
            VStack {
                Divider()
                    .background(Color.gray)
            }
        }
    }
    
    
    
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
    
    struct KegowLogo: View {
        var body: some View {
            HStack {
                Spacer()
                Image("kegow_logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 250, height: 150)
                    .aspectRatio(contentMode: .fit)
                Spacer()
            }
        }
    }

