//
//  main.swift
//  RandomBingo
//
//  Created by 김인겸 on 2023/08/09.
//

import Foundation

var computerChoice = Int.random(in: 1...100)

var myChoice: Int = 0


while true{
    
    var userInput = readLine()
    
    if let input = userInput {
        if let number = Int(input) {
            myChoice = number
        }
    }
    
    print(myChoice)
    
    if computerChoice > myChoice {
        print("up")
    } else if computerChoice < myChoice {
        print("down")
    } else {
        print("bingo")
        break
    }
}

