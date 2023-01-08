//
//  AboutScreen.swift
//  Counterstike Quiz App 2.0 (IOS-16)
//
//  Created by Paul Bethge on 12.08.22.
//

import Foundation
import SwiftUI

struct AboutScreen: View {
    var body: some View {
        
        ZStack {
            
            Image("Background")
                .resizable().aspectRatio(contentMode: .fill).blur(radius: 1, opaque: true).frame(width: 0)
                .ignoresSafeArea()
            
            ScrollView{
                
                VStack {
                    Spacer().frame(height: 30)
                    
                    Text("First of all, a big thank you to everyone for downloading the app. I hope you like it and have fun with it.")
                        .padding()
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                    
                    Spacer().frame(height: 30)
                    
                    Text("I'm Paul, the developer of this app. This app started as a learning course for the Swift language needed for IOS app development. My plan was to use the Counterstike Quiz app for testing and personal use only. ")
                        .padding()
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                    
                    Spacer().frame(height: 30)
                    
                    Text("Counterstrike is a passion of mine. I spent many hours in the game, on YouTube and on Twitch, following everything there was to follow in Counterstrike. So it was no wonder that this app quickly turned from a test into another passion related to one of my favourite games.")
                    
                        .padding()
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                    
                    Spacer().frame(height: 30)
                }
                
                VStack {
                    
                    Text("Despite my efforts to design the app as well as possible and to make it 100% functional, bugs or minor errors unfortunately appear here too from time to time. Even though every developer wants his app to be 100% perfect, this is often not the case.")
                        .padding()
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                    
                    Spacer().frame(height: 30)
                    
                    Text("To make the app better bit by bit, I'm counting on you! You can easily submit bug reports at any time via the button below, which will be fixed as soon as possible!")
                        .padding()
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                    
                    Spacer().frame(height: 30)
                    
                    NavigationLink(value: Route.bugreport, label: {
                        Image(systemName: "trash.circle")
                            .foregroundColor(.white)
                        
                        Text("Bug-Report")
                            .foregroundColor(.white)
                        
                        Image(systemName: "trash.circle")
                            .foregroundColor(.white)
                    })
                }
            }
        }
    }
}
