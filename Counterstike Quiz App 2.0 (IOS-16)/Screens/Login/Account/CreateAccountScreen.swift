//
//  CreateAccountScreen.swift
//  Counterstike Quiz App 2.0 (IOS-16)
//
//  Created by Paul Bethge on 12.08.22.
//

import Foundation
import SwiftUI

struct CreateAccountScreen: View {
    
    @State private var username = ""
    @State private var password = ""
    @State private var mail = ""
    @State private var confirm_password = ""
    @State private var wronguser = 0
    @State private var wrongpw = 0
    @State private var wrongmail = 0
    @State private var combination = 0
    @State private var acc_created = false
    
    var body: some View {
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
                
                TextField("Username", text: $username)
                    .padding()
                    .frame(width: 300, height: 50)
                    .background(Color.cyan.opacity(0.1))
                    .textInputAutocapitalization(.never)
                    .cornerRadius(15)
                    .border(.red, width: CGFloat(wronguser))
                
                TextField("E-Mail", text: $mail)
                    .padding()
                    .frame(width: 300, height: 50)
                    .background(Color.cyan.opacity(0.1))
                    .textInputAutocapitalization(.never)
                    .cornerRadius(15)
                    .border(.red, width: CGFloat(wrongmail))
                
                SecureField("Password", text: $password)
                    .padding()
                    .frame(width: 300, height: 50)
                    .background(Color.cyan.opacity(0.1))
                    .textInputAutocapitalization(.never)
                    .cornerRadius(15)
                    .border(.red, width: CGFloat(wrongpw))
                
                /*
                SecureField("Confirm Password", text: $confirm_password)
                    .padding()
                    .frame(width: 300, height: 50)
                    .background(Color.cyan.opacity(0.1))
                    .textInputAutocapitalization(.never)
                    .cornerRadius(15)
                    .border(.red, width: CGFloat(wrongpw))
                 */
                
                Button("Confirm") {
                    authenticateUser(username: username, password: password)
                }
                .foregroundColor(.white)
                .frame(width: 300, height: 50)
                .background(Color.cyan)
                .cornerRadius(15)
            }
        }
    }
    
    func authenticateUser(username: String, password: String) {
        if username != "paul" {
            wronguser = 0
            
            if password.count <= 6 {
                wrongpw = 0
                acc_created = true
                
                if mail != "paulotto.bethge@gmail.com" {
                    wrongmail = 0
                    
                } else {
                    wrongmail = 2
                    
                }
            } else {
                wrongpw = 2
                
            }
        } else {
            wronguser = 2
            
        }
    }
}
