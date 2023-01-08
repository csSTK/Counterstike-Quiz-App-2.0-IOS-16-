//
//  Counterstike_Quiz_App_2_0__IOS_16_App.swift
//  Counterstike Quiz App 2.0 (IOS-16)
//
//  Created by Paul Bethge on 11.08.22.
//

import SwiftUI

enum Route: Hashable {
    case home
    case quiz
    case learn
    case account
    case acc_create
    case about
    case bugreport
    case forgotpassword
    case pistol
    case heavy
    case rifle
    case profile
}

@main
struct Counterstike_Quiz_App_2_0__IOS_16_App: App {
    
    @StateObject var navpath = NavView()
    @AppStorage ("Continu") var continu: Bool = false
    
    var body: some Scene {
        WindowGroup {
            NavigationStack(path: $navpath.path) {
                StartScreen()
                    .navigationDestination(for: Route.self) { route in
                        switch route {
                        case .home:
                            HomeScreen()
                        case .quiz:
                            QuizScreen()
                        case .learn:
                            LearnScreen()
                        case .account:
                            if !continu {
                                AccountScreen()
                            } else {
                                SwitchAccScreen()
                            }
                        case .acc_create:
                            CreateAccountScreen()
                        case .about:
                            AboutScreen()
                        case .bugreport:
                            BugReportScreen()
                        case .forgotpassword:
                            ForgotPasswordScreen()
                        case .pistol:
                            PistolScreen()
                        case .heavy:
                            HeavyScreen()
                        case .rifle:
                            RifleScreen()
                        case .profile:
                            ProfileScreen()
                        }
                    }
            }
        }
    }
}

class NavView: ObservableObject {
    
    @Published var path : NavigationPath = NavigationPath()
    
}
