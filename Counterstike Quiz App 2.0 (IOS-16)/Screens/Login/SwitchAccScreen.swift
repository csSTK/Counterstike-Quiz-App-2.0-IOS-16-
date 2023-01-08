//
//  HomeAccScreen.swift
//  Counterstike Quiz App 2.0 (IOS-16)
//
//  Created by Paul Bethge on 22.09.22.
//

import SwiftUI

enum Icons: Hashable {
    case home
    case highscore
    case friends
    case settings
}

struct SwitchAccScreen: View {
    
    @StateObject private var isConnected = NetworkMonitor()
    
    var body: some View {
        if isConnected.isActive {
            TabView {
                
                FriendsScreen()
                    .tabItem() {
                        Image(systemName: "person")
                        Text("Friends")
                    }
                
                AccHomeScreen()
                    .tabItem() {
                        Image(systemName: "house")
                        Text("Home")
                    }
                
                AccSettingsScreen()
                    .tabItem() {
                        Image(systemName: "gear")
                        Text("Settings")
                    }
            }
            
        } else {
            NoConnectionScreen()
        }
    }
}

struct SwitchAccScreen_Previews: PreviewProvider {
    static var previews: some View {
        SwitchAccScreen()
    }
}
