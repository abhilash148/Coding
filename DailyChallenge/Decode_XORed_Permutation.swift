//
//  Decode_XORed_Permutation.swift
//  DailyChallenge
//
//  Created by Sai Abhilash Gudavalli on 21/07/22.
//

import Foundation

class DecodeXORedPermutation {
    func decode(_ encoded: [Int]) -> [Int] {
        let arraySize = encoded.count + 1
        var originalArray: [Int] = Array(repeating: 0, count: arraySize)
        
        var value = 0
        for i in 1...arraySize {
            value = value ^ i
        }
        
        for i in 0..<arraySize where i % 2 == 1 {
            value = value ^ encoded[i]
        }
        originalArray[0] = value
        
        for i in 1..<arraySize {
            originalArray[i] = originalArray[i-1] ^ encoded[i-1]
        }
        
        return originalArray
    }
    
    func printAnswer(_ input: [Int]) {
        print(decode(input))
    }
}
