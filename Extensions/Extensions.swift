//
//  Extensions.swift
//  Extensions
//
//  Created by Bejan Fozdar on 10/16/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

extension String {
    var pigLatin: String {
        return calcPigLatin()
    }
    var points: Int {
        return calcPoints()
    }
    
    
    func calcPigLatin() -> String {
        var pigLatin = ""
        for var word in self.components(separatedBy: " ") {
            if word.characters.count > 1 {
                word.append(String(word.remove(at: word.startIndex)).lowercased())
                word = "\(word.capitalized)ay"
            }
            
            pigLatin += "\(word) "
        }
        
        if !pigLatin.isEmpty {
            pigLatin.remove(at: pigLatin.index(pigLatin.endIndex, offsetBy: -1))
        }
        
        return pigLatin
    }
    
    func calcPoints() -> Int {
        if !self.isEmpty {
            let vowels = ["a", "e", "i", "o", "u", "y"]
            let ignore = [" ", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9"]
            var points = 0
            
            for character in self.characters {
                let character = String(character).lowercased()
                if vowels.contains(character) {
                    points += 2
                } else if !ignore.contains(character) {
                    points += 1
                }
            }
            
            return points
        }
        
        return 0
    }
    
    func whisper() -> String {
        return self.lowercased()
    }
    
    func shout() -> String {
        return self.uppercased()
    }
}

extension Int {
    var squared: Int {
        return self * self
    }
    
    var halved: Int {
        return half()
    }
    
    func half() -> Int {
        return self / 2
    }
    
    func isDivisible(by number: Int) -> Bool {
        return self % number == 0
    }
}

extension String{
    var unicornLevel: String {
        return getUnicornLevel()
    }
    
    func getUnicornLevel() -> String {
        var unicorns = ""
        for character in self.characters {
            if character != " " {
                unicorns += "🦄"
            }
        }
        
        return unicorns
    }
}
