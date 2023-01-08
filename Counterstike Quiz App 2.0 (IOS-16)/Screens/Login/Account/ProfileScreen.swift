//
//  ProfileScreen.swift
//  Counterstike Quiz App 2.0 (IOS-16)
//
//  Created by Paul Bethge on 24.09.22.
//

import SwiftUI

struct ProfileScreen: View {
    
    @State var editmail = false
    @State var editpassword = false
    @State var editusername = false
    @State var confirm = false
    
    @State private var newusername = ""
    @State private var newmail = ""
    @State private var newpassword = ""
    @State private var newpassword2 = ""
    @State private var oldpassword = ""
    
    @State private var error_1 = 0
    @State private var error_2 = 0
    @State private var error_3 = 0
    @State private var error_4 = 0
    
    @AppStorage ("UserName") var username: String = ""
    @AppStorage("E-Mail") var email: String = ""
    @AppStorage("Password") var password: String = ""
    
    @StateObject private var isConnected = NetworkMonitor()
    
    var body: some View {
        if !isConnected.isActive {
            NoConnectionScreen()
        } else {
        
            ZStack {
                
                Image("Background7")
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
                        .padding(.bottom)
                    
                    Spacer()
                    
                    ScrollView {
                        Text("Profile")
                            .font(.system(size: 30))
                            .foregroundColor(.white)
                        
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
                                    Image(systemName: "arrow.forward")
                                    
                                    TextField("Change User Name", text: $newusername)
                                        .border(.red, width: CGFloat(error_1))
                                        .textInputAutocapitalization(.never)
                                        .cornerRadius(6)
                                    
                                    Spacer()
                                    
                                    Button(action: {
                                        if newusername == "" {
                                            error_1 = 2
                                        } else {
                                            username = newusername
                                            editusername = false
                                            error_1 = 0
                                        }
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
                                    Image(systemName: "arrow.forward")
                                    
                                    TextField("Change E-Mail", text: $newmail)
                                        .border(.red, width: CGFloat(error_2))
                                        .textInputAutocapitalization(.never)
                                        .cornerRadius(6)
                                        .textContentType(.emailAddress)
                                        .keyboardType(.emailAddress)
                                    
                                    Spacer()
                                    
                                    Button(action: {
                                        if newmail == "" {
                                            error_2 = 2
                                        } else {
                                            email = newmail
                                            editmail = false
                                            error_2 = 0
                                        }
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
                            Text("Password")
                            
                            Spacer()
                            
                            Button(action: {
                                editpassword = true
                            }, label: {
                                Text("Change")
                            })
                        }
                        .padding(.horizontal)
                        .foregroundColor(.white)
                        .frame(width: 380, height: 20)
                        
                        //HIER WEITERARBEITEN
                        //
                        //Edit Password noch nicht funktional
                        
                        if editpassword {
                            VStack {
                                
                                Text("Change your Password below")
                                    .multilineTextAlignment(.leading)
                                    .foregroundColor(.white)
                                
                                HStack {
                                    Image(systemName: "arrow.forward")
                                    
                                    SecureField("Old Password", text: $oldpassword)
                                        .border(.red, width: CGFloat(error_3))
                                        .textInputAutocapitalization(.never)
                                        .cornerRadius(6)
                                    
                                    Spacer()
                                    
                                    Button(action: {
                                        if oldpassword == password {
                                            confirm = true
                                        } else {
                                            error_3 = 2
                                        }
                                    }, label: {
                                        Text("Confirm")
                                    })
                                }
                                .foregroundColor(.white)
                                .padding(.horizontal)
                                .frame(width: 380, height: 20)
                                
                                HStack {
                                    Image(systemName: "arrow.forward")
                                    
                                    SecureField("New Password", text: $newpassword)
                                        .border(.red, width: CGFloat(error_4))
                                        .textInputAutocapitalization(.never)
                                        .cornerRadius(6)
                                    
                                    Spacer()
                                    
                                    Button(action: {
                                        if newpassword == "" {
                                            error_4 = 2
                                        }
                                    }, label: {
                                        Text("Confirm")
                                    })
                                }
                                .foregroundColor(.white)
                                .padding(.horizontal)
                                .frame(width: 380, height: 20)
                                
                                HStack {
                                    Image(systemName: "arrow.forward")
                                    
                                    SecureField("Confirm Password", text: $newpassword2)
                                        .border(.red, width: CGFloat(error_4))
                                        .textInputAutocapitalization(.never)
                                        .cornerRadius(6)
                                    
                                    Spacer()
                                    
                                    Button(action: {
                                        if newpassword2 == "" {
                                            error_4 = 2
                                        }
                                        if newpassword == newpassword2 {
                                            if confirm {
                                                password = newpassword2
                                                
                                                editpassword = false
                                            } else {
                                                error_4 = 2
                                            }
                                        } else {
                                            error_4 = 2
                                        }
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
                        
                        VStack {
                            Text("Subscribtion")
                                .font(.system(size: 30))
                                .foregroundColor(.white)
                            
                            Text("There are no subscribtions!")
                                .foregroundColor(.white)
                        }
                        
                    }.padding(.top)
                        .background(.black.opacity(0.3))
                        .cornerRadius(30)
                }
            }
        }
    }
}

struct ProfileScreen_Previews: PreviewProvider {
    static var previews: some View {
        ProfileScreen()
    }
}
