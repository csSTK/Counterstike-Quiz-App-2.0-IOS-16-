//
//  LearnScreen.swift
//  Counterstike Quiz App 2.0 (IOS-16)
//
//  Created by Paul Bethge on 11.08.22.
//

import Foundation
import SwiftUI

struct LearnScreen: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {

            NavigationLink(value: Route.pistol, label: {
                
                ZStack{
                    Image("USP-csgo").resizable() .frame(width: 330, height: 200).cornerRadius(10)
                    
                    VStack{
                        Spacer().frame(height: 130)
                        HStack{
                            Image(systemName: "restart.circle.fill")
                                .foregroundColor(Color.white)
                                .imageScale(/*@START_MENU_TOKEN@*/.large/*@END_MENU_TOKEN@*/)
                            
                            Text("Learn about Pistols").foregroundColor(Color.white).bold()
                        }
                    }
                }
            })
            
            NavigationLink(value: Route.heavy, label: {
                
                ZStack{
                    Image("Heavy-csgo").resizable() .frame(width: 330, height: 200).cornerRadius(10)
                    
                    VStack{
                        Spacer().frame(height: 130)
                        HStack{
                            Image(systemName: "restart.circle.fill")
                                .foregroundColor(Color.white)
                                .imageScale(/*@START_MENU_TOKEN@*/.large/*@END_MENU_TOKEN@*/)
                            
                            Text("Learn about Heavys").foregroundColor(Color.white).bold()
                        }
                    }
                }
            })
            
            NavigationLink(value: Route.learn, label: {
                
                ZStack{
                    Image("MP5-csgo").resizable() .frame(width: 330, height: 200).cornerRadius(10)
                    
                    VStack{
                        Spacer().frame(height: 130)
                        HStack{
                            Image(systemName: "restart.circle.fill")
                                .foregroundColor(Color.white)
                                .imageScale(/*@START_MENU_TOKEN@*/.large/*@END_MENU_TOKEN@*/)
                            
                            Text("Learn about SMG's").foregroundColor(Color.white).bold()
                        }
                    }
                }
            })
            
            NavigationLink(value: Route.rifle, label: {
                
                ZStack{
                    Image("AK47-csgo").resizable() .frame(width: 330, height: 200).cornerRadius(10)
                    
                    VStack{
                        Spacer().frame(height: 130)
                        HStack{
                            Image(systemName: "restart.circle.fill")
                                .foregroundColor(Color.white)
                                .imageScale(/*@START_MENU_TOKEN@*/.large/*@END_MENU_TOKEN@*/)
                            
                            Text("Learn about Rifles").foregroundColor(Color.white).bold()
                        }
                    }
                }
            })
            
            NavigationLink(value: Route.learn, label: {
                
                ZStack{
                    Image("Gear-csgo").resizable() .frame(width: 330, height: 200).cornerRadius(10)
                    
                    VStack{
                        Spacer().frame(height: 130)
                        HStack{
                            Image(systemName: "restart.circle.fill")
                                .foregroundColor(Color.white)
                                .imageScale(/*@START_MENU_TOKEN@*/.large/*@END_MENU_TOKEN@*/)
                            
                            Text("Learn about The Gear").foregroundColor(Color.white).bold()
                        }
                    }
                }
            })
            
        }
    }
}
