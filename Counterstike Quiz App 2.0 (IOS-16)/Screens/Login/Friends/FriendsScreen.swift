//
//  FriendsScreen.swift
//  Counterstike Quiz App 2.0 (IOS-16)
//
//  Created by Paul Bethge on 20.09.22.
//

import Foundation
import SwiftUI

struct FriendsScreen: View {
    
    @State var transition = false
    @State var button = false
    
    @State var buttonText = "Add Friends"
    
    var body: some View {
        
        ZStack {
            
            Image("Background4")
                .resizable().aspectRatio(contentMode: .fill).blur(radius: 1, opaque: true).frame(width: 0)
                .ignoresSafeArea()
            
            VStack {
                
                Spacer()
                
                HStack {
                    
                    Spacer()
                    
                    Button(buttonText, action: {
                        withAnimation {
                            transition.toggle()
                        }
                        
                        if transition {
                            buttonText = "Go Back"
                        } else {
                            buttonText = "Add Friends"
                        }
                    })
                    .foregroundColor(.white)
                    .frame(width: 145, height: 50)
                    .background(.green)
                    .cornerRadius(15)
                    .padding(.top)
                    
                    Spacer()
                    
                }.padding()
                
                //Spacer()
                
                if transition {
                    
                    SearchFriendScreen()
                        .transition(.move(edge: .trailing))
                } else {
                    YourFriendsScreen()
                        .transition(.move(edge: .leading))
                }
                
            }
        }
        
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        FriendsScreen()
    }
}
