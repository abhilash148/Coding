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

// let mapping1 = [8,9,4,0,2,1,3,5,7,6]
// let nums1 = [991,338,38]
// expected output = [338,38,991]

// let mapping2 = [0,1,2,3,4,5,6,7,8,9]
// let nums2 = [789,456,123]
// expected output = [123,456,789]

// let mapping3 = [8,2,9,5,3,7,1,0,6,4]
// let nums3 = [418,4191,916,948,629641556,574,111171937,28250,42775632,6086,85796326,696292542,186,67559,2167,366,854,2441,78176,621,4257,2250097,509847,7506,77,50,4135258,4036,59934,59474,3646243,9049356,85852,90298188,2448206,30401413,33190382,968234660,7973,668786,992777977,77,355766,221,246409664,216290476,45,87,836414,40952]
// expected output = [77,45,87,50,621,186,418,7973,916,948,366,854,574,7506,221,6086,4191,4036,4257,78176,2167,2441,67559,40952,85852,59474,59934,28250,668786,355766,836414,509847,4135258,9049356,3646243,2448206,2250097,42775632,90298188,33190382,30401413,85796326,696292542,629641556,111171937,968234660,992777977,216290476,246409664]

let mapping = [8,9,4,0,2,1,3,5,7,6]
let nums = [991,338,38]
var stjm = SortTheJumbledNumbers()
stjm.printAnswer(mapping, nums)

// MARK: Rearrange words in a sentence

// input1 = "Leetcode is cool"
// expected output = "Is cool leetcode"

// input2 = "Keep calm and code on"
// expected output = "On and keep calm code"

// input3 = "To be or not to be"
// expected output = "To be or to be not"

let text = "Leetcode is cool"
var rwis = RearrangeWordsInSentence()
rwis.printAnswer(text)


// MARK: Smallest Index With Equal Value

// input1 = [0,1,2]
// expected output = 0

// input2 = [4,3,2,1]
// expected output = 2

// input3 = [1,2,3,4,5,6,7,8,9,0]
// expected output = -1

var siwev = SmallestIndexWithEqualValue()
siwev.printAnswer([4,3,2,1])

// MARK: Number of steps to reduce a number in Binary Representation to One

// input1 = "1101"
// expected output = 6

// input2 = "10"
// expected output = 1

// input3 = "1"
// expected output = 0

var rnbro = ReduceNumberBinaryRepresentationOne()
rnbro.printAnswer("1101")

// MARK: Decode XORed Permutation

// input1 = [3,1]
// expected output = [1,2,3]

// input2 = [6,5,4,6]
// expected output = [2,4,1,5,3]

var dxp = DecodeXORedPermutation()
dxp.printAnswer([3,1])

// MARK: License Key Formatting

// input1 = "5F3Z-2e-9-w"
// k = 4
// Expected output = "5F3Z-2E9W"

// input2 = "2-5g-3-J"
// k = 2
// Expected output = "2-5G-3J"

// input3 = "2-4A0r7-4k"
// k = 4
// Expected output = "24A0-R74K"

var lkf = LicenseKeyFormatting()
lkf.printResult("5F3Z-2e-9-w", 4)

// MARK: Min Cost Climbing Stairs

// input1 = [10,15,20]
// Expected output = 15

// input2 = [1,100,1,1,1,100,1,1,100,1]
// Expected output = 6

var mccs = MinCostClimbingStairs()
mccs.printResult([10,15,20])

