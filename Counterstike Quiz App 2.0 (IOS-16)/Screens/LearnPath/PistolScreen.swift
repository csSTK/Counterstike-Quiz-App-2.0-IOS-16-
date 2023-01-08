//
//  PistolScreen.swift
//  Counterstike Quiz App 2.0 (IOS-16)
//
//  Created by Paul Bethge on 14.08.22.
//

import Foundation
import SwiftUI

struct PistolScreen: View {
    var body: some View {
        ZStack {
            
            Image("Background5")
                .resizable().aspectRatio(contentMode: .fill).blur(radius: 1, opaque: true).frame(width: 0)
                .ignoresSafeArea()
            
            ScrollView(.vertical, showsIndicators:  false) {
                
                VStack {
                    
                    Spacer().frame(height: 40)
                    
                    ZStack {
                        
                        Image("USP-csgo").resizable() .frame(width: 360, height: 230).cornerRadius(20)
                        
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
                        
                        Image("Berettas-csgo").resizable() .frame(width: 360, height: 230).cornerRadius(20)
                        
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
                        
                        Image("P250-csgo").resizable() .frame(width: 360, height: 230).cornerRadius(20)
                        
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
                    
                }
                
                VStack {
                    
                    ZStack {
                        
                        Image("FiveSeven-csgo").resizable() .frame(width: 380, height: 230).cornerRadius(20)
                        
                    }
                    
                    VStack {
                        
                        Text("Base damage: 31")
                            .frame(width: 360, height: 20, alignment: .leading)
                            .padding([.top, .leading])
                        
                        Spacer().frame(height: 10)
                        
                        Text("Headshot damage: 126")
                            .frame(width: 360, height: 20, alignment: .leading)
                            .padding(.leading)
                        
                        Spacer().frame(height: 10)
                        
                        Text("Cost: 500$")
                            .frame(width: 360, height: 20, alignment: .leading)
                            .padding(.leading)
                        
                        Spacer().frame(height: 10)
                        
                        Text("Amor Penetration: 91.15%")
                            .frame(width: 360, height: 20, alignment: .leading)
                            .padding(.leading)
                        
                        Spacer().frame(height: 20)
                        
                    }.foregroundColor(.white)
                    
                    ZStack {
                        
                        Image("Cz47-csgo").resizable() .frame(width: 360, height: 230).cornerRadius(20)
                        
                    }
                    
                    VStack {
                        
                        Text("Base damage: 30")
                            .frame(width: 360, height: 20, alignment: .leading)
                            .padding([.top, .leading])
                        
                        Spacer().frame(height: 10)
                        
                        Text("Headshot damage: 123")
                            .frame(width: 360, height: 20, alignment: .leading)
                            .padding(.leading)
                        
                        Spacer().frame(height: 10)
                        
                        Text("Cost: 500$")
                            .frame(width: 360, height: 20, alignment: .leading)
                            .padding(.leading)
                        
                        Spacer().frame(height: 10)
                        
                        Text("Amor Penetration: 77.65%")
                            .frame(width: 360, height: 20, alignment: .leading)
                            .padding(.leading)
                        
                        Spacer().frame(height: 20)
                        
                    }.foregroundColor(.white)
                    
                    ZStack {
                        
                        Image("Deagle-csgo").resizable() .frame(width: 360, height: 230).cornerRadius(20)
                        
                    }
                    
                    VStack {
                        
                        Text("Base damage: 52")
                            .frame(width: 360, height: 20, alignment: .leading)
                            .padding([.top, .leading])
                        
                        Spacer().frame(height: 10)
                        
                        Text("Headshot damage: 205")
                            .frame(width: 360, height: 20, alignment: .leading)
                            .padding(.leading)
                        
                        Spacer().frame(height: 10)
                        
                        Text("Cost: 700$")
                            .frame(width: 360, height: 20, alignment: .leading)
                            .padding(.leading)
                        
                        Spacer().frame(height: 10)
                        
                        Text("Amor Penetration: 93.2%")
                            .frame(width: 360, height: 20, alignment: .leading)
                            .padding(.leading)
                        
                        Spacer().frame(height: 20)
                        
                    }.foregroundColor(.white)
                }
                
                
                
                ZStack {
                    
                    Image("P2000-csgo").resizable() .frame(width: 360, height: 230).cornerRadius(20)
                    
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
                    
                    Text("Cost: 200$")
                        .frame(width: 360, height: 20, alignment: .leading)
                        .padding(.leading)
                    
                    Spacer().frame(height: 10)
                    
                    Text("Amor Penetration: 50.5%")
                        .frame(width: 360, height: 20, alignment: .leading)
                        .padding(.leading)
                    
                    Spacer().frame(height: 20)
                }.foregroundColor(.white)
                
                ZStack {
                    
                    Image("Glock-csgo").resizable() .frame(width: 360, height: 230).cornerRadius(20)
                    
                }
                
                VStack {
                    
                    Text("Base damage: 29")
                        .frame(width: 360, height: 20, alignment: .leading)
                        .padding([.top, .leading])
                    
                    Spacer().frame(height: 10)
                    
                    Text("Headshot damage: 119")
                        .frame(width: 360, height: 20, alignment: .leading)
                        .padding(.leading)
                    
                    Spacer().frame(height: 10)
                    
                    Text("Cost: 200$")
                        .frame(width: 360, height: 20, alignment: .leading)
                        .padding(.leading)
                    
                    Spacer().frame(height: 10)
                    
                    Text("Amor Penetration: 47.5%")
                        .frame(width: 360, height: 20, alignment: .leading)
                        .padding(.leading)
                    
                    Spacer().frame(height: 20)
                }.foregroundColor(.white)
                
                ZStack {
                    
                    Image("Tec9-csgo").resizable() .frame(width: 360, height: 230).cornerRadius(20)
                    
                }
                
                VStack {
                    
                    Text("Base damage: 32")
                        .frame(width: 360, height: 20, alignment: .leading)
                        .padding([.top, .leading])
                    
                    Spacer().frame(height: 10)
                    
                    Text("Headshot damage: 150")
                        .frame(width: 360, height: 20, alignment: .leading)
                        .padding(.leading)
                    
                    Spacer().frame(height: 10)
                    
                    Text("Cost: 500$")
                        .frame(width: 360, height: 20, alignment: .leading)
                        .padding(.leading)
                    
                    Spacer().frame(height: 10)
                    
                    Text("Amor Penetration: 91.15%")
                        .frame(width: 360, height: 20, alignment: .leading)
                        .padding(.leading)
                    
                    Spacer().frame(height: 20)
                }.foregroundColor(.white)
            }
        }
    }
}
