//
//  AccSettingsScreen.swift
//  Counterstike Quiz App 2.0 (IOS-16)
//
//  Created by Paul Bethge on 23.09.22.
//

import SwiftUI

struct AccSettingsScreen: View {
    
    @AppStorage ("UserName") var username: String = ""
    @AppStorage ("DownloadCellular") var download_cellular: Bool = false
    @AppStorage ("DownloadQuiz") var download_quiz: Bool = true
    @AppStorage ("CommitCellular") var upload: Bool = true
    
    var body: some View {
        ZStack {
            Image("Background4")
                .resizable().aspectRatio(contentMode: .fill).blur(radius: 1, opaque: true).frame(width: 0)
                .ignoresSafeArea()
            
            VStack {
                
                HStack {
                    Text("Settings")
                        .font(.system(size: 30))
                        .foregroundColor(.white)
                        .frame(width: 115, height: 40)
                        .multilineTextAlignment(.leading)
                        .padding([.leading, .top])
                    Spacer()
                }
                
                HStack {
                    
                    Image(systemName: "person")
                        .resizable()
                        .foregroundColor(.white)
                        .padding(.leading).frame(width: 45, height: 30)
                            
                    NavigationLink(value: Route.profile, label: {
                                VStack {
                                    
                                    HStack {
                                        Text("Profile: \(username)")
                                        Spacer()
                                    }
                                    
                                    HStack {
                                        Text("Name, Mail, Password & Purchases")
                                        
                                        Spacer()
                                    }.padding([.bottom])
                                        .foregroundColor(.white)
                                    
                                }
                            }).padding([.leading, .top])
                                .foregroundColor(.white)
                            
                            Spacer()

                }.background(.gray.opacity(0.5))
                    .frame(width: 360, height: 100)
                    .cornerRadius(80)
                
                HStack {
                    Image(systemName: "wifi")
                        .padding(.leading)
                        .foregroundColor(.white)
                    
                    Text("Download on cellular")
                        .foregroundColor(.white)
        
                    
                    Spacer()
                    
                    Button(action: {
                        download_cellular.toggle()
                    }, label: {
                        if download_cellular {
                            Image(systemName: "capsule.righthalf.filled")
                            Text("On")
                        } else {
                            Image(systemName: "capsule.lefthalf.filled")
                            Text("Off")
                        }
                    }).foregroundColor(.white)
                        .padding(.trailing)
                }
                .frame(width: 360, height: 40)
                .background(.gray.opacity(0.5))
            .cornerRadius(30)
                
                HStack {
                    
                    Image(systemName: "wifi")
                        .padding(.leading)
                        .foregroundColor(.white)
                    
                    Text("Commit Highscores on cellular")
                        .foregroundColor(.white)
                    
                    Spacer()
                    
                    Button(action: {
                        upload.toggle()
                    }, label: {
                        if upload {
                            Image(systemName: "capsule.righthalf.filled")
                            Text("On")
                        } else {
                            Image(systemName: "capsule.lefthalf.filled")
                            Text("Off")
                        }
                    }).foregroundColor(.white)
                        .padding(.trailing)
                }
                .frame(width: 360, height: 40)
                .background(.gray.opacity(0.5))
                .cornerRadius(30)
                
                HStack {
                    
                    Image(systemName: "arrow.down.app")
                        .padding(.leading)
                        .foregroundColor(.white)
                    
                    Text("Download Quiz")
                        .foregroundColor(.white)
                    
                    Spacer()
                    
                    Button(action: {
                        download_quiz.toggle()
                    }, label: {
                        if download_quiz {
                            Image(systemName: "capsule.righthalf.filled")
                            Text("On")
                        } else {
                            Image(systemName: "capsule.lefthalf.filled")
                            Text("Off")
                        }
                    }).foregroundColor(.white)
                        .padding(.trailing)
                }
                .frame(width: 360, height: 40)
                .background(.gray.opacity(0.5))
                .cornerRadius(30)
                
                Spacer()
            }
        }
    }
}

struct AccSettingsScreen_Previews: PreviewProvider {
    static var previews: some View {
        AccSettingsScreen()
    }
}
