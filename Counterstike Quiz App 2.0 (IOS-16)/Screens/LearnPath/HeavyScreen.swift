//
//  HeavyScreen.swift
//  Counterstike Quiz App 2.0 (IOS-16)
//
//  Created by Paul Bethge on 14.08.22.
//

import Foundation
import SwiftUI

struct HeavyScreen: View {
    var body: some View {
        ZStack {
            
            Image("Background5")
                .resizable().aspectRatio(contentMode: .fill).blur(radius: 1, opaque: true).frame(width: 0)
                .ignoresSafeArea()
            
            ScrollView(.vertical, showsIndicators:  false) {
                
                VStack {
                    
                    Spacer().frame(height: 40)
                    
                    ZStack {
                        
                        Image("Nova-csgo").resizable() .frame(width: 360, height: 230).cornerRadius(20)
                        
                    }
                    
                    VStack {
                        
                        Text("Base damage: 26")
                            .frame(width: 360, height: 20, alignment: .leading)
                            .padding([.top, .leading])
                        
                        Spacer().frame(height: 10)
                        
                        Text("Headshot damage: 106")
                            .frame(width: 360, height: 20, alignment: .leading)
                            .padding(.leading)
                        
                        Spacer().frame(height: 10)
                        
                        Text("Cost: 1500$")
                            .frame(width: 360, height: 20, alignment: .leading)
                            .padding(.leading)
                        
                        Spacer().frame(height: 10)
                        
                        Text("Amor Penetration: 50%")
                            .frame(width: 360, height: 20, alignment: .leading)
                            .padding(.leading)
                        
                        Spacer().frame(height: 20)
                    }.foregroundColor(.white)
                    
                    ZStack {
                        
                        Image("SawedOff-csgo").resizable() .frame(width: 360, height: 230).cornerRadius(20)
                        
                    }
                    
                    VStack {
                        
                        Text("Base damage: 32")
                            .frame(width: 360, height: 20, alignment: .leading)
                            .padding([.top, .leading])
                        
                        Spacer().frame(height: 10)
                        
                        Text("Headshot damage: 128")
                            .frame(width: 360, height: 20, alignment: .leading)
                            .padding(.leading)
                        
                        Spacer().frame(height: 10)
                        
                        Text("Cost: 1500$")
                            .multilineTextAlignment(.leading)
                            .frame(width: 360, height: 20, alignment: .leading)
                            .padding(.leading)
                        
                        Spacer().frame(height: 10)
                        
                        Text("Amor Penetration: 75%")
                            .frame(width: 360, height: 20, alignment: .leading)
                            .padding(.leading)
                        
                        Spacer().frame(height: 20)
                    }.foregroundColor(.white)
                    
                    ZStack {
                        
                        Image("Mag7-csgo").resizable() .frame(width: 360, height: 230).cornerRadius(20)

                    }
                    
                    VStack {
                        
                        Text("Base damage: 30")
                            .frame(width: 360, height: 20, alignment: .leading)
                            .padding([.top, .leading])
                        
                        Spacer().frame(height: 10)
                        
                        Text("Headshot damage: 120")
                            .frame(width: 360, height: 20, alignment: .leading)
                            .padding(.leading)
                        
                        Spacer().frame(height: 10)
                        
                        Text("Cost: 2000$")
                            .frame(width: 360, height: 20, alignment: .leading)
                            .padding(.leading)
                        
                        Spacer().frame(height: 10)
                        
                        Text("Amor Penetration: 75%")
                            .frame(width: 360, height: 20, alignment: .leading)
                            .padding(.leading)
                        
                        Spacer().frame(height: 20)
                    }.foregroundColor(.white)
                }
                
                VStack {
                    ZStack {
                        
                        Image("Xm1014-csgo").resizable() .frame(width: 360, height: 230).cornerRadius(20)

                    }
                    
                    VStack {
                        
                        Text("Base damage: 26")
                            .frame(width: 360, height: 20, alignment: .leading)
                            .padding([.top, .leading])
                        
                        Spacer().frame(height: 10)
                        
                        Text("Headshot damage: 106")
                            .frame(width: 360, height: 20, alignment: .leading)
                            .padding(.leading)
                        
                        Spacer().frame(height: 10)
                        
                        Text("Cost: 1500$")
                            .frame(width: 360, height: 20, alignment: .leading)
                            .padding(.leading)
                        
                        Spacer().frame(height: 10)
                        
                        Text("Amor Penetration: 50%")
                            .frame(width: 360, height: 20, alignment: .leading)
                            .padding(.leading)
                        
                        Spacer().frame(height: 20)
                    }.foregroundColor(.white)
                    
                    ZStack {
                        
                        Image("Negev-csgo").resizable() .frame(width: 360, height: 230).cornerRadius(20)

                    }
                    
                    VStack {
                        
                        Text("Base damage: 32")
                            .frame(width: 360, height: 20, alignment: .leading)
                            .padding([.top, .leading])
                        
                        Spacer().frame(height: 10)
                        
                        Text("Headshot damage: 128")
                            .frame(width: 360, height: 20, alignment: .leading)
                            .padding(.leading)
                        
                        Spacer().frame(height: 10)
                        
                        Text("Cost: 1500$")
                            .frame(width: 360, height: 20, alignment: .leading)
                            .padding(.leading)
                        
                        Spacer().frame(height: 10)
                        
                        Text("Amor Penetration: 75%")
                            .frame(width: 360, height: 20, alignment: .leading)
                            .padding(.leading)
                        
                        Spacer().frame(height: 20)
                    }.foregroundColor(.white)
                    
                    ZStack {
                        
                        Image("M249-csgo").resizable() .frame(width: 360, height: 230).cornerRadius(20)

                    }
                    
                    VStack {
                        
                        Text("Base damage: 30")
                            .frame(width: 360, height: 20, alignment: .leading)
                            .padding([.top, .leading])
                        
                        Spacer().frame(height: 10)
                        
                        Text("Headshot damage: 120")
                            .frame(width: 360, height: 20, alignment: .leading)
                            .padding(.leading)
                        
                        Spacer().frame(height: 10)
                        
                        Text("Cost: 2000$")
                            .frame(width: 360, height: 20, alignment: .leading)
                            .padding(.leading)
                        
                        Spacer().frame(height: 10)
                        
                        Text("Amor Penetration: 75%")
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
