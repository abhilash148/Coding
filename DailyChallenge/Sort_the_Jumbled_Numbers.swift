//
//  Sort_the_Jumbled_Numbers.swift
//  DailyChallenge
//
//  Created by Sai Abhilash Gudavalli on 02/06/22.
//

import Foundation

class SortTheJumbledNumbers {
    func sortJumbled(_ mapping: [Int], _ nums: [Int]) -> [Int] {
        var outputDict: [Int: Int] = [Int: Int]()
        
        for num in nums {
            let numberArray = String(num).compactMap { $0.wholeNumberValue
            }
            
            var newNumber = 0
            for num1 in numberArray {
                newNumber = (newNumber * 10) + mapping[num1]
            }
            outputDict[num] = newNumber
        }
        return outputDict.sorted { $0.value < $1.value }.compactMap { $0.key }
    }
    
    func printAnswer(_ mapping: [Int], _ nums: [Int]) {
        print(sortJumbled(mapping, nums))
    }
}
