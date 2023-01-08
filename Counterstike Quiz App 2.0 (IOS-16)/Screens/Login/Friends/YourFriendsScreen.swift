//
//  YourFriendsScreen.swift
//  Counterstike Quiz App 2.0 (IOS-16)
//
//  Created by Paul Bethge on 22.09.22.
//

import SwiftUI
struct YourFriendsScreen: View {
    
    @State var AddedFriends = [""]
    
    var body: some View {
        ZStack {
            
            /*
            Image("Background4")
                .resizable().aspectRatio(contentMode: .fill).blur(radius: 1, opaque: true).frame(width: 0)
                .ignoresSafeArea()
             */
            
            VStack {
                Spacer()
                
                Text("Your Friends:")
                    .foregroundColor(.white)
                    .font(.title)
                
                Spacer()
                
                if AddedFriends == [""] {
                    VStack {
                        Text("You have no added friends yet")
                            .multilineTextAlignment(.center)
                            .foregroundColor(.white)
                            .padding()
                        
                        Text("Klick on the 'Add Friends \(Image(systemName: "person.fill"))' Button to add your friends to share your achiefments with them")
                            .multilineTextAlignment(.center)
                            .foregroundColor(.white)
                            .padding()
                    }
                } else {
                    List (AddedFriends, id: \.self) {
                        Text($0)
                    }.cornerRadius(30)
                }
                
                Spacer()
                
            }
        }
            .frame(width: 380, height: 600)
            .padding(.bottom)
    }
}

struct YourFriendsScreen_Previews: PreviewProvider {
    static var previews: some View {
        YourFriendsScreen()
    }
}
