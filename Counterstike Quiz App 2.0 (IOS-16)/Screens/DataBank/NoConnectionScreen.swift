//
//  NoConnectionScreen.swift
//  Counterstike Quiz App 2.0 (IOS-16)
//
//  Created by Paul Bethge on 23.09.22.
//

import SwiftUI

struct NoConnectionScreen: View {
    var body: some View {
        ZStack {
            
            Image("Background7")
                .resizable().aspectRatio(contentMode: .fill).blur(radius: 1, opaque: true)
                .ignoresSafeArea()
            
            VStack {
                HStack {
                    
                    Image(systemName: "wifi.slash")
                        .resizable()
                        .padding(.top)
                        .foregroundColor(.red)
                        .frame(width: 60, height: 65)
                    
                    Text("You've got no internet connection!")
                        .font(.headline)
                        .foregroundColor(.red)
                        .multilineTextAlignment(.center)
                        .padding(.top)
                    
                    Image(systemName: "wifi.slash")
                        .resizable()
                        .padding(.top)
                        .foregroundColor(.red)
                        .frame(width: 60, height: 65)
                    
                }.frame(width: 330)
                
                Spacer()
                
                Text("Some parts of the app are not fully functional without an internet connection.")
                    .frame(width: 330)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                
                Spacer()
                
                Text("You can still use the default functions of the app. Features like the 'Friends Screen' are not part of these default functions!")
                    .frame(width: 330)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                
                Spacer()
                
                Text("All of your highscores will be commited to the Database when your internet connection is workling again. ")
                    .frame(width: 330)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                
                Spacer()
                
                Text("If you are on a cellular connection only the download of new questions is paused. Every single new highscore will be instantly commited and can be seen by your friends.")
                    .frame(width: 330)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                
                Spacer()
            }
            
        }
    }
}

struct NoConnectionScreen_Previews: PreviewProvider {
    static var previews: some View {
        NoConnectionScreen()
    }
}
