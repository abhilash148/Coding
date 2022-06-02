//
//  main.swift
//  DailyChallenge
//
//  Created by Sai Abhilash Gudavalli on 30/05/22.
//

import Foundation

// MARK: Shortest Palindrome

// input1 = abcd
// expected output = dcbabcd

// input2 = aacecaaa
// expected output = aaacecaaa

// input3 = aabba
// expected output = abbaabba

var input = "aabba"
var object = Solution()
var output = object.shortestPalindrome(input)
object.printAnswer(output)

// MARK: Sort the Jumbled Numbers

let mapping = [8,9,4,0,2,1,3,5,7,6]
let nums = [991,338,38]
var stjm = SortTheJumbledNumbers()


