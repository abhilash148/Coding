//
//  Smallest_Index_With_Equal_Value.swift
//  DailyChallenge
//
//  Created by Sai Abhilash Gudavalli on 04/06/22.
//

import Foundation

class SmallestIndexWithEqualValue {
    func smallestEqual(_ nums: [Int]) -> Int {
        var index = 0
        while(index < nums.count) {
            if (index % 10 == nums[index]) {
                return index
            }
            index += 1
        }
        return -1
    }
    
    func printAnswer(_ nums: [Int]) {
        print(smallestEqual(nums))
    }
}
