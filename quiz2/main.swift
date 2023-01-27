//
//  main.swift
//  quiz2
//
//  Created by Jarae on 26/1/23.
//

import Foundation


var quesitons = [
    [["вопрос1"],[["варивт ответа1"],["варивт ответа2"],["варивт ответа3"],["варивт ответа4"]]],
    [["вопрос2"],[["варивт ответа1"],["варивт ответа2"],["варивт ответа3"],["варивт ответа4"]]],
    [["вопрос3"],[["варивт ответа1"],["варивт ответа2"],["варивт ответа3"],["варивт ответа4"]]]
]
var answers = ["правильный ответ1", "правильный ответ2", "правильный ответ3", "правильный ответ4"]


var players = [Player]()  //players array

var play: Bool = true    //new game bool
while play == true{
    print("Enter your user name: ", terminator: "")
    let name: String = readLine()!
    print("Enter your age: ", terminator: "")
    let age: Int?
    age = Int(readLine()!)     //info
    var prize = 0
    
    let player = Player(name: name, age: age ?? 0)
    
    //game starts
    var flag = true
    var index = 0
    while flag == true{
        for row in quesitons[index]{
            print(row)
        }
        
        
        let answer = readLine()!
        if answer == answers[index]{
            print("правильно!")
            prize += (index + 1) * 1000
        
            print("Хотите продолжить или забираете приз?")
            let ans = readLine()!
            if ans == "prize"{
                flag = false
            }
            
        }else{
            print("не правильно!")
            flag = false
            prize = 0
        }
        index += 1
    }
    
    
    player.setPrize(prize)
    player.showInfo()
    //player.getPrize()
    players.append(player)

    print("Хочешь еще раз?")
    let continueOrNot = readLine()!
    if continueOrNot == "no"{
        play = false
    }
}

