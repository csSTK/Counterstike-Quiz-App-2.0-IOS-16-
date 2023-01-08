//
//  HomeScreen.swift
//  Counterstike Quiz App 2.0 (IOS-16)
//
//  Created by Paul Bethge on 11.08.22.
//

import Foundation
import SwiftUI

struct HomeScreen: View {
    
    @State var test = false
    
        var body: some View {
        ZStack {
            
            Image("Background")
                .resizable().aspectRatio(contentMode: .fill).blur(radius: 1, opaque: true).frame(width: 0)
                .ignoresSafeArea()
            
            VStack {
                
                Spacer()
                
                NavigationLink(value: Route.account, label: {
                    Image(systemName: "person.circle")
                        .foregroundColor(.white)
                    
                    Text("Account")
                        .foregroundColor(.white)
                    
                    Image(systemName: "person.circle")
                        .foregroundColor(.white)
                })
                
                Spacer()
                
                NavigationLink(value: Route.quiz, label: {
                    Image(systemName: "questionmark.circle")
                        .foregroundColor(.white)
                    
                    Text("It's quiz time")
                        .foregroundColor(.white)
                    
                    Image(systemName: "questionmark.circle")
                        .foregroundColor(.white)
                })
                
                Spacer()
                
                NavigationLink(value: Route.learn, label: {
                    Image(systemName: "book")
                        .foregroundColor(.white)
                    
                    Text("Dont be dumb, Just learn it")
                        .foregroundColor(.white)
                    
                    Image(systemName: "book")
                        .foregroundColor(.white)
                })
                
                Spacer()
                
                NavigationLink(value: Route.about, label: {
                    Image(systemName: "terminal")
                        .foregroundColor(.white)
                    
                    Text("About")
                        .foregroundColor(.white)
                    
                    Image(systemName: "terminal")
                        .foregroundColor(.white)
                })

                Spacer()
            }
        }
    }
}
