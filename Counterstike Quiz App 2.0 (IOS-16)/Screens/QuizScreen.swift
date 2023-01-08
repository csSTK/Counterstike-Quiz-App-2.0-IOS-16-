//
//  QuizScreen.swift
//  Counterstike Quiz App 2.0 (IOS-16)
//
//  Created by Paul Bethge on 11.08.22.
//

import Foundation
import SwiftUI

struct QuizScreen: View {
    
    @State var Answer_A = "Answer-A-1"
    @State var Answer_B = "Answer-B-1"
    @State var Answer_C = "Answer-C-1"
    @State var Answer_D = "Answer-D-1"
    @State var Quest = "What is the maximum Money in cs:go?"
    @State var option = ""
    @State var QuizNum = 1
    @State var Score = 0
    @State var Answer = "B"
    @State var playerScore = 0
    
    let QuestsArray = [
        "How long does a defuse without a kit take?", // 0
        "What is the maximum Money in cs:go?", // 1
        "Which gun hast the best amor penetration?", // 2
        "How many Majors did Envy managed to win?", // 3
        "How much does a Knife Kill get you", // 4
        "When was cs:go released?", // 5
        "What was the name of the 'Skins Update'?" //not implemented 6
    ]
    
    let QuizAnswer = [
        "C", // 0
        "B", // 1
        "D", // 2
        "B", // 3
        "D", // 4
        "A", // 5
        "" // 6
    ]
    
    var body: some View {

        ZStack{
            
            Image("Background2")
                .resizable().frame(width: 1400).aspectRatio(contentMode: .fill).blur(radius: 1, opaque: true).frame(width: 0)
                .ignoresSafeArea()
            
            VStack{
                
                Text(Quest)
                    .padding()
                    .foregroundColor(Color.white).bold()
                    .background(Color.gray.opacity(0.6))
                    .cornerRadius(15)
                
                Spacer().frame(height: 20)
                
                Button(action: {
                    let QuizNum = Int.random(in: 0...4)
                    
                    if Answer == "A" {
                        Score += 1
                    }
                    
                    //option = "option \(QuizNum)"
                    
                    Quest = QuestsArray[QuizNum]
                    
                    Answer = QuizAnswer[QuizNum]
                    
                    Answer_A = "Answer-A-" + String(QuizNum)
                    Answer_B = "Answer-B-" + String(QuizNum)
                    Answer_C = "Answer-C-" + String(QuizNum)
                    Answer_D = "Answer-D-" + String(QuizNum)
                    
                }, label: {
                    Image(Answer_A)
                        .imageScale(/*@START_MENU_TOKEN@*/.small/*@END_MENU_TOKEN@*/)
                })
                
                Button(action: {
                    let QuizNum = Int.random(in: 0...4)
                    
                    if Answer == "B" {
                        Score += 1
                    }
                    
                    //option = "option \(QuizNum)"
                    
                    Quest = QuestsArray[QuizNum]
                    
                    Answer = QuizAnswer[QuizNum]
                    
                    Answer_A = "Answer-A-" + String(QuizNum)
                    Answer_B = "Answer-B-" + String(QuizNum)
                    Answer_C = "Answer-C-" + String(QuizNum)
                    Answer_D = "Answer-D-" + String(QuizNum)
                    
                }, label: {
                    Image(Answer_B)
                        .imageScale(/*@START_MENU_TOKEN@*/.small/*@END_MENU_TOKEN@*/)
                })
                
                Button(action: {
                    let QuizNum = Int.random(in: 0...4)
                    
                    if Answer == "C" {
                        Score += 1
                    }
                    
                    //option = "option \(QuizNum)"
                    
                    Quest = QuestsArray[QuizNum]
                    
                    Answer = QuizAnswer[QuizNum]
                    
                    Answer_A = "Answer-A-" + String(QuizNum)
                    Answer_B = "Answer-B-" + String(QuizNum)
                    Answer_C = "Answer-C-" + String(QuizNum)
                    Answer_D = "Answer-D-" + String(QuizNum)
                    
                }, label: {
                    Image(Answer_C)
                        .imageScale(/*@START_MENU_TOKEN@*/.small/*@END_MENU_TOKEN@*/)
                })
                
                Button(action: {
                    let QuizNum = Int.random(in: 0...4)
                    
                    if Answer == "D" {
                        Score += 1
                    }
                    
                    //option = "option \(QuizNum)"
                    
                    Quest = QuestsArray[QuizNum]
                    
                    Answer = QuizAnswer[QuizNum]
                    
                    Answer_A = "Answer-A-" + String(QuizNum)
                    Answer_B = "Answer-B-" + String(QuizNum)
                    Answer_C = "Answer-C-" + String(QuizNum)
                    Answer_D = "Answer-D-" + String(QuizNum)
                    
                }, label: {
                    Image(Answer_D)
                        .imageScale(/*@START_MENU_TOKEN@*/.small/*@END_MENU_TOKEN@*/)
                })
                
                Spacer().frame(height: 20)
                
                Text("Your Score is: \(Score)")
                    .padding()
                    .foregroundColor(Color.white).bold()
                    .background(Color.gray.opacity(0.6))
                    .cornerRadius(15)
                
                Spacer().frame(height: 20)
                
                VStack {
                    
                    NavigationLink("Better to study a bit more...", value: Route.learn)
                        .foregroundColor(.white)
                }
                
            }
        }
    }
    /*
    func QuizChange(QuizNum : Int) -> Int {
    let option = "option \(QuizNum)"
    
    let Quest = QuestsArray[QuizNum]
    
    let Answer_A = "Answer-A-" + String(QuizNum)
    let Answer_B = "Answer-B-" + String(QuizNum)
    let Answer_C = "Answer-C-" + String(QuizNum)
    let Answer_D = "Answer-D-" + String(QuizNum)
    }
    */
}
