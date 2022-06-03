//
//  Rearrange_words_in_sentence.swift
//  DailyChallenge
//
//  Created by Sai Abhilash Gudavalli on 03/06/22.
//

import Foundation

class RearrangeWordsInSentence {
    
    func arrangeWords(_ text: String) -> String {
        var outputTuple: [(name: String, value: Int)] = []
        let inputArray = text.lowercased().split(separator: " ")
        
        for s in inputArray {
            outputTuple.append((name: String(s), value: s.count))
        }
        
        let outputString = outputTuple.sorted {$0.value < $1.value}.compactMap {$0.name}.joined(separator: " ")
        
        return outputString.prefix(1).capitalized + outputString.dropFirst()
    }
    
    func printAnswer(_ text: String) {
        print(arrangeWords(text))
    }
}
