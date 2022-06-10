//
//  Reduce_Number_BinaryRep_One.swift
//  DailyChallenge
//
//  Created by Sai Abhilash Gudavalli on 11/06/22.
//

import Foundation

class ReduceNumberBinaryRepresentationOne {
    
    func numSteps(_ s: String) -> Int {
        
        var index = s.count - 1
        var stepCount = 0
        var carry = 0
        
        while (index > 0) {
            
            let char = s[s.index(s.startIndex, offsetBy: index)]
            
            if ((char == "1" && carry == 0) || (char == "0" && carry == 1)) {
                stepCount += 2
                carry = 1
            } else if (char == "0" && carry == 0) {
                stepCount += 1
            } else {
                stepCount += 1
                carry = 1
            }
            index -= 1
        }
        
        if carry > 0 {
            stepCount += 1
        }
        return stepCount
    }

    
    func printAnswer(_ s: String) {
        print("\(numSteps(s))")
    }
}
