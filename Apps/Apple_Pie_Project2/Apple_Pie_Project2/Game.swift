//
//  Game.swift
//  Apple_Pie_Project2
//
//  Created by Student on 22/07/25.
//

import Foundation

struct Game{
    var word: String
    var incorrectMovesremaining: Int
    var guessedLetters: [Character]
    
    mutating func playerGuessed(letter:Character){
        guessedLetters.append(letter)
        if !word.contains(letter){
            incorrectMovesremaining -= 1
        }
    }
    var formattedWord: String{
        var guessedWord = ""
        for letter in word{
            if guessedLetters.contains(letter){
                guessedWord += "\(letter)"
            }else{
                guessedWord += "-"
            }
        }
        return guessedWord
    }
}


