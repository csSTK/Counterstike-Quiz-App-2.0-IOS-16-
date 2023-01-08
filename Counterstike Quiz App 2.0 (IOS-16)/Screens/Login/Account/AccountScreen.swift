//
//  AccountScreen.swift
//  Counterstike Quiz App 2.0 (IOS-16)
//
//  Created by Paul Bethge on 11.08.22.
//

import Foundation
import SwiftUI

struct AccountScreen: View {
    @EnvironmentObject var navpath:NavView
    
    @State private var password = ""
    @State private var wrongcomb = 0
    @State private var combination = 0
    
    @State private var reardylogin = false
    @State private var forgotpw = false
    @State private var loginfail = false
    
    @AppStorage ("UserName") var username: String = ""
    @AppStorage ("Status") var logedin: Bool?
    @AppStorage ("Continu") var continu: Bool = false
    
    var body: some View {
        if logedin == true {
            ZStack {
                
                Image("Background4")
                    .resizable().aspectRatio(contentMode: .fill).blur(radius: 1, opaque: true).frame(width: 0)
                    .ignoresSafeArea()
                
                ZStack {
                    
                    Image("Background4")
                        .resizable().aspectRatio(contentMode: .fill).blur(radius: 1, opaque: true).frame(width: 0)
                        .ignoresSafeArea()
                    
                    VStack {
                        Text("Hey @\(username) you're logged in!")
                            .padding()
                            .foregroundColor(.white)
                            .multilineTextAlignment(.center)
                            .font(.system(size: 35))
                            .bold()
                        
                        Spacer().frame(height: 20)
                        
                        Text("You can now connect with your friends, share your scores and sign up for the premium programme.")
                            .padding()
                            .foregroundColor(.white)
                            .multilineTextAlignment(.center)
                            .font(.system(size: 20))
                        
                        Spacer().frame(height: 40)
                        
                        Button("Continu") {
                            continu = true
                        }
                        
                        Spacer()
                        
                        Button("Log Out") {
                            logedin = false
                        }.foregroundColor(.red)
                        
                        Spacer()
                    }
                }
            }
            
        } else {
            
            ZStack {
                
                Image("Background4")
                    .resizable().aspectRatio(contentMode: .fill).blur(radius: 1, opaque: true).frame(width: 0)
                    .ignoresSafeArea()
                
                VStack {
                    Text("Login")
                        .font(.largeTitle)
                        .bold()
                        .padding()
                        .foregroundColor(.white)
                    
                    if loginfail == true {
                        
                        Text("The combination of username and password is incorrect! Please try again.")
                            .foregroundColor(.red)
                            .multilineTextAlignment(.center)
                            .padding()
                        
                    }
                    
                    TextField("Username", text: $username)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.cyan.opacity(0.1))
                        .textInputAutocapitalization(.never)
                        .cornerRadius(15)
                        .border(.red, width: CGFloat(wrongcomb))
                    
                    SecureField("Password", text: $password)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.cyan.opacity(0.1))
                        .textInputAutocapitalization(.never)
                        .privacySensitive()
                        .cornerRadius(15)
                        .border(.red, width: CGFloat(wrongcomb))
                    
                    HStack {
                        Button("Forgot password?") {
                            forgotpw = true
                        }
                        .foregroundColor(.white)
                        .frame(width: 145, height: 50)
                        .background(Color.red)
                        .cornerRadius(15)
                        
                        Button("Confirm") {
                            authenticateUser(username: username, password: password)
                        }
                        .foregroundColor(.white)
                        .frame(width: 145, height: 50)
                        .background(Color.cyan)
                        .cornerRadius(15)
                    }.padding(.top)
                    
                    NavigationLink(destination: ForgotPasswordScreen(), isActive: $forgotpw) {
                        EmptyView()
                    }
                    
                    Spacer().frame(height: 25)
                    
                    VStack {
                        NavigationLink(value: Route.acc_create, label: {
                            
                            Text("create account instead ")
                                .foregroundColor(.white)
                        })
                    }
                }
            }.transition(.slide)
        }
    }
    
    func authenticateUser(username: String, password: String) {
        if username == "Paul" {
            wrongcomb = 0
            combination += 1
            
            if password == "Test123" {
                wrongcomb = 0
                combination += 1
                
                if combination == 2 {
                    reardylogin = true
                    logedin = true
                    loginfail = false
                    
                } else {
                    wrongcomb = 2
                    loginfail = true
                }
                
            } else {
                wrongcomb = 2
                loginfail = true
            }
            
        } else {
            wrongcomb = 2
            loginfail = true
        }
    }
}
