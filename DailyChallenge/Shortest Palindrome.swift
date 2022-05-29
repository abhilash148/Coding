//
//  Shortest Palindrome.swift
//  DailyChallenge
//
//  Created by Sai Abhilash Gudavalli on 30/05/22.
//

import Foundation

class Solution {
    func shortestPalindrome(_ s: String) -> String {
        
        var inputArr = Array(s)
        let revArr = Array(inputArr.reversed())
        
        var isPalindrome: Bool = false
        var count1 = 0
        
        while (!isPalindrome) {
            var left = 0
            var right = inputArr.count - 1
            var count = 0
            while (left < right) {
                
                if (inputArr[left] == inputArr[right]) {
                    left += 1
                    right -= 1
                } else {
                    count += 1
                    right -= 1
                }
            }
            if count == 0 {
                isPalindrome = true
            } else {
                count1 += count
                inputArr = revArr[..<count1] + Array(s)
            }
        }
        
        return String(inputArr)
        
    }
    
    func printAnswer(_ output: String) {
        print(shortestPalindrome(output))
    }
}

