//
//  ContentView.swift
//  Counterstike Quiz App 2.0 (IOS-16)
//
//  Created by Paul Bethge on 11.08.22.
//

import SwiftUI

struct StartScreen: View {
    
    @StateObject private var isConnected = NetworkMonitor()
    
    var body: some View {
        ZStack {
            
            Image("Background")
                .resizable().aspectRatio(contentMode: .fill).blur(radius: 1, opaque: true).frame(width: 0)
                .ignoresSafeArea()
            
            VStack {
                
                if isConnected.isActive {
                    if isConnected.isExpensive {
                        Text("Is connected, but on cellular")
                        .foregroundColor(.white)} else {
                            Text("Is connected")
                                .foregroundColor(.white)
                        }
                } else {
                    Text("Not connected")
                        .foregroundColor(.white)
                }
                
                Spacer()
                
                Text("Counterstike Quiz App")
                    .padding()
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    
                
                Spacer()
                
                NavigationLink(value: Route.home, label: {
                    Image(systemName: "arrowshape.turn.up.forward")
                        .foregroundColor(.white)
                    
                    Text("Klick me to start")
                        .foregroundColor(.white)
                    
                    Image(systemName: "arrowshape.turn.up.forward")
                        .foregroundColor(.white)
                })
                
                Spacer()
                
                ZStack{
                    Image(systemName: "circle.dashed.inset.filled")
                        .resizable()
                        .foregroundColor(.white)
                        .frame(width: 300, height: 300)
                        .padding(.leading, 65.0)
                    
                    Image("Background3")
                        .resizable()
                        .frame(width: 200, height: 200)
                        .cornerRadius(100)
                        .padding(.leading, 65.0)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            StartScreen()
                .navigationDestination(for: Route.self) { route in
                    switch route {
                    case .home:
                        HomeScreen()
                    case .quiz:
                        QuizScreen()
                    case .learn:
                        LearnScreen()
                    case .account:
                        AccountScreen()
                    case .acc_create:
                        CreateAccountScreen()
                    case .about:
                        AboutScreen()
                    case .bugreport:
                        BugReportScreen()
                    case .forgotpassword:
                        ForgotPasswordScreen()
                    case .pistol:
                        PistolScreen()
                    case .heavy:
                        HeavyScreen()
                    case .rifle:
                        RifleScreen()
                    case .profile:
                        ProfileScreen()
                    }
                }
        }
    }
}
