//
//  ProfileScreen.swift
//  Counterstike Quiz App 2.0 (IOS-16)
//
//  Created by Paul Bethge on 24.09.22.
//

import SwiftUI

struct Test: View {
    
    @State var editmail = false
    @State var editpassword = false
    @State var editusername = false
    @State private var newusername = ""
    @State private var newmail = ""
    
    @AppStorage ("UserName") var username: String = ""
    @AppStorage("E-Mail") var email: String = ""
    
    var body: some View {
        ZStack {
            
            Image("Background6")
                .resizable().aspectRatio(contentMode: .fill).blur(radius: 1, opaque: true).frame(width: 0)
                .ignoresSafeArea()
            
            VStack {
                
                Text("\(username)")
                    .foregroundColor(.white)
                    .font(.system(size: 30))
                    .frame(width: 360)
                Text("\(email)")
                    .foregroundColor(.white)
                    .font(.system(size: 16))
                    .frame(width: 360)
                
                Spacer()
                
                ScrollView {
                    
                    Spacer()
                    
                    HStack {
                        Text("\(username)")
                        
                        Spacer()
                        
                        Button(action: {
                            editusername = true
                        }, label: {
                            Text("Change")
                        })
                    }
                    .padding(.horizontal)
                    .foregroundColor(.white)
                    .frame(width: 380, height: 20)
                    
                    if editusername {
                        VStack {
                            
                            Text("Change your user name below")
                                .multilineTextAlignment(.leading)
                                .foregroundColor(.white)
                            
                            HStack {
                                
                                TextField("Change User Name", text: $newusername)
                                
                                Spacer()
                                
                                Button(action: {
                                    username = newusername
                                    editusername = false
                                }, label: {
                                    Text("Confirm")
                                })
                            }
                            .foregroundColor(.white)
                            .padding(.horizontal)
                        .frame(width: 380, height: 20)
                        }
                    }
                    
                    
                    HStack {
                        Text("\(email)")
                        
                        Spacer()
                        
                        Button(action: {
                            editmail = true
                        }, label: {
                            Text("Change")
                        })
                    }
                    .padding(.horizontal)
                    .foregroundColor(.white)
                    .frame(width: 380, height: 20)
                    
                    if editmail {
                        VStack {
                            
                            Text("Change your E-Mail below")
                                .multilineTextAlignment(.leading)
                                .foregroundColor(.white)
                            
                            HStack {
                                
                                TextField("Change User Name", text: $newmail)
                                
                                Spacer()
                                
                                Button(action: {
                                    email = newmail
                                    editmail = false
                                }, label: {
                                    Text("Confirm")
                                })
                            }
                            .foregroundColor(.white)
                            .padding(.horizontal)
                        .frame(width: 380, height: 20)
                        }
                    }
                    
                    Spacer()
                }.padding(.top)
                    .background(.gray.opacity(0.3))
                    .cornerRadius(30)
            }
        }
    }
}

struct Test_: PreviewProvider {
    static var previews: some View {
        ProfileScreen()
    }
}
