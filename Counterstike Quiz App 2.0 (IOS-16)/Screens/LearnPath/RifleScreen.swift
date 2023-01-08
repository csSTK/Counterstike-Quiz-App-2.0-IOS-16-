//
//  RifleScreen.swift
//  Counterstike Quiz App 2.0 (IOS-16)
//
//  Created by Paul Bethge on 14.08.22.
//

import Foundation
import SwiftUI

struct RifleScreen: View {
    var body: some View {
        ZStack {
            
            Image("Background5")
                .resizable().aspectRatio(contentMode: .fill).blur(radius: 1, opaque: true).frame(width: 0)
                .ignoresSafeArea()
            
            ScrollView(.vertical, showsIndicators:  false) {
                
                VStack {
                    
                    Spacer().frame(height: 40)
                    
                    ZStack {
                        
                        Image("M4a4-csgo").resizable() .frame(width: 360, height: 230).cornerRadius(20)
                        
                    }
                    
                    VStack {
                        
                        Text("Base damage: 35")
                            .frame(width: 360, height: 20, alignment: .leading)
                            .padding([.top, .leading])
                        
                        Spacer().frame(height: 10)

                        Text("Headshot damage: 140")
                            .frame(width: 360, height: 20, alignment: .leading)
                            .padding(.leading)
                        
                        Spacer().frame(height: 10)
                        
                        Text("Cost:   200$")
                            .frame(width: 360, height: 20, alignment: .leading)
                            .padding(.leading)
                        
                        Spacer().frame(height: 10)

                        Text("Amor Penetration: 50.5%")
                            .frame(width: 360, height: 20, alignment: .leading)
                            .padding(.leading)
                        
                        Spacer().frame(height: 20)
                    }.foregroundColor(.white)
                    
                    ZStack {
                        
                        Image("M4a1s-csgo").resizable() .frame(width: 360, height: 230).cornerRadius(20)
                        
                    }
                    
                    VStack {
                        
                        Text("Base damage: 37")
                            .frame(width: 360, height: 20, alignment: .leading)
                            .padding([.top, .leading])
                        
                        Spacer().frame(height: 10)

                        Text("Headshot damage: 150")
                            .frame(width: 360, height: 20, alignment: .leading)
                            .padding(.leading)
                        
                        Spacer().frame(height: 10)
                        
                        Text("Cost: 400$")
                            .frame(width: 360, height: 20, alignment: .leading)
                            .padding(.leading)
                        
                        Spacer().frame(height: 10)

                        Text("Amor Penetration: 52.5%")
                            .frame(width: 360, height: 20, alignment: .leading)
                            .padding(.leading)

                        Spacer().frame(height: 20)
                    }.foregroundColor(.white)
                    
                    ZStack {
                        
                        Image("Aug-csgo").resizable() .frame(width: 360, height: 230).cornerRadius(20)
                        
                    }
                    
                    VStack {
                        
                        Text("Base damage: 37")
                            .frame(width: 360, height: 20, alignment: .leading)
                            .padding([.top, .leading])
                        
                        Spacer().frame(height: 10)

                        Text("Headshot damage: 151")
                            .frame(width: 360, height: 20, alignment: .leading)
                            .padding(.leading)
                        
                        Spacer().frame(height: 10)
                        
                        Text("Cost: 300$")
                            .frame(width: 360, height: 20, alignment: .leading)
                            .padding(.leading)
                        
                        Spacer().frame(height: 10)

                        Text("Amor Penetration: 64%")
                            .frame(width: 360, height: 20, alignment: .leading)
                            .padding(.leading)

                        Spacer().frame(height: 20)
                    }.foregroundColor(.white)
                    
                    Spacer().frame(height: 20)
                }
            }
        }
    }
}
