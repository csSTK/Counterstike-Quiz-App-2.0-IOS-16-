//
//  SearchFriendScreen.swift
//  Counterstike Quiz App 2.0 (IOS-16)
//
//  Created by Paul Bethge on 21.09.22.
//

import SwiftUI

struct SearchFriendScreen: View {
    
    @State var search = ""
    
    var AllFriends = ["Test", "Paul", "Jakob", "Nancy", "Paula", "Hanne" , "Mauricio", "Test", "Paul", "Jakob", "Nancy", "Paula", "Hanne" , "Mauricio"]
    
    var friend: [String] {
        let friends = AllFriends.map { $0 }
        
        return search == "" ? friends : friends.filter {
            $0.contains(search)
        }
    }
    
    var body: some View {
        VStack {
            
            Spacer()
            
            TextField("Search for friends", text: $search)
                .multilineTextAlignment(.center)
                .textInputAutocapitalization(.never)
                .submitLabel(.done)
                
            
            List(friend, id: \.self) {
                Button($0, action: {
                    
                })
                .foregroundColor(.black)
            }
            
        }   .background(.white)
            .frame(width: 380, height: 600)
            .cornerRadius(30)
            .padding(.bottom)
        
    }
}

struct SearchFriendScreen_Previews: PreviewProvider {
    static var previews: some View {
        SearchFriendScreen()
    }
}
