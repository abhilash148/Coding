//
//  Min_Cost_Climbing_Stairs.swift
//  DailyChallenge
//
//  Created by Sai Abhilash Gudavalli on 23/07/22.
//

import Foundation

class MinCostClimbingStairs {
    
    func minCostClimbingStairs(_ cost: [Int]) -> Int {
            var index = cost.count
        var minArray = Array(repeating: 0, count: cost.count)
        minArray[index-1] = cost[index-1]
        minArray[index-2] = cost[index-2]
        index = index - 3
        
        while(index >= 0) {
            minArray[index] = cost[index] + min(minArray[index+1],minArray[index+2])
            index = index - 1
        }
        
        return min(minArray[0],minArray[1])
    }
    
    func printResult(_ cost: [Int]) {
        print(minCostClimbingStairs(cost))
    }
}
