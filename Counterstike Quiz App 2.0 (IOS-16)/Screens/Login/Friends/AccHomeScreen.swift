//
//  AccHomeScreen.swift
//  Counterstike Quiz App 2.0 (IOS-16)
//
//  Created by Paul Bethge on 23.09.22.
//

import SwiftUI

struct AccHomeScreen: View {
    private var highscore = 0
    
    @AppStorage ("Status") var logedin: Bool?
    @AppStorage ("Continu") var continu: Bool = false
    
    var body: some View {
        ZStack {
            
            Image("Background4")
                .resizable().aspectRatio(contentMode: .fill).blur(radius: 1, opaque: true).frame(width: 0)
                .ignoresSafeArea()
            
            VStack {
                
                HStack {
                    
                    Spacer()
                    
                    Button("Log Out") {
                        logedin = false
                        continu = false
                    }.foregroundColor(.red)
                        .frame(width: 90, height: 40)
                        .background(.white)
                        .cornerRadius(30)
                }.padding([.trailing, .top])
                
                Spacer()
                
                HStack {
                    
                    Text("Your Highscore:")
                        .foregroundColor(.white)
                    Text("\(highscore)")
                        .foregroundColor(.white)
                    Spacer()
                }
                .padding(.leading)
                .frame(width: 380)
                
                Spacer()
                
                
                
                Spacer()
                
            }
            
            
        }
    }
}

struct AccHomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        AccHomeScreen()
    }
}
