//
//  LogedinScreen.swift
//  Counterstike Quiz App 2.0 (IOS-16)
//
//  Created by Paul Bethge on 12.08.22.
//

import Foundation
import SwiftUI

struct LogedinScreen: View {
    
    @Binding var username: String
    @EnvironmentObject var navpath:NavView
    
    var body: some View {
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
                
                Button("Back to Home") {
                    //Pop to root button not function
                    //fix later
                }
                
            }
        }
    }
}
