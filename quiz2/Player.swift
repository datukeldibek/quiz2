//
//  Player.swift
//  quiz2
//
//  Created by Jarae on 26/1/23.
//

import Foundation
class Player {
    var name: String
    var age: Int
    private var prize: Int = 0
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
    func setPrize(_ prize: Int){
        self.prize = prize
    }
    func getPrize() -> Int{
        return prize
    }
    func showInfo(){
        print("name: \(name), age: \(age), total prize sum: \(prize)")
    }
}
