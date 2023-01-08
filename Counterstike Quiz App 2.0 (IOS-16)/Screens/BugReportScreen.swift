//
//  BugReportScreen.swift
//  Counterstike Quiz App 2.0 (IOS-16)
//
//  Created by Paul Bethge on 12.08.22.
//

import Foundation
import SwiftUI

struct BugReportScreen: View {
    
    @State private var email = ""
    @State private var bug = ""
    
    var body: some View {
        
        ZStack {
        
            Image("Background")
                .resizable().aspectRatio(contentMode: .fill).blur(radius: 1, opaque: true).frame(width: 0)
                .ignoresSafeArea()
            
            VStack {
                
                TextField("Email", text: $email)
                    .padding()
                    .frame(width: 300, height: 50)
                    .background(Color.blue.opacity(0.1))
                    .cornerRadius(15)
                
                TextField("Bug-Report", text: $bug)
                    .padding()
                    .frame(width: 300, height: 50)
                    .background(Color.cyan.opacity(0.1))
                    .cornerRadius(15)
            }
        }
    }
}
