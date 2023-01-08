//
//  ForgotPasswordScreen.swift
//  Counterstike Quiz App 2.0 (IOS-16)
//
//  Created by Paul Bethge on 13.08.22.
//

import Foundation
import SwiftUI

struct ForgotPasswordScreen: View {
    
    @State private var username = ""
    @State private var email = ""
    
    var body: some View {
        ZStack {
            
            Image("Background4")
                .resizable().aspectRatio(contentMode: .fill).blur(radius: 1, opaque: true).frame(width: 0)
                .ignoresSafeArea()
            
            VStack {
                Text("Forgot Password")
                    .font(.largeTitle)
                    .bold()
                    .padding()
                    .foregroundColor(.white)
                
                TextField("Username", text: $username)
                    .padding()
                    .frame(width: 300, height: 50)
                    .background(Color.cyan.opacity(0.1))
                    .textInputAutocapitalization(.never)
                    .privacySensitive()
                    .cornerRadius(15)
                
                TextField("Email", text: $email)
                    .padding()
                    .frame(width: 300, height: 50)
                    .background(Color.cyan.opacity(0.1))
                    .textInputAutocapitalization(.never)
                    .privacySensitive()
                    .cornerRadius(15)
                
                Button("Send Mail") {
                    
                }
                .foregroundColor(.white)
                .frame(width: 300, height: 50)
                .background(Color.cyan)
                .cornerRadius(15)
            }
        }
    }
}
