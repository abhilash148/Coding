//
//  Bottom_Left_Tree_Value.swift
//  DailyChallenge
//
//  Created by Sai Abhilash Gudavalli on 24/07/22.
//

import Foundation

public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    
    public init() {
        self.val = 0
        self.left = nil
        self.right = nil
    }
    
    public init(_ val: Int) {
        self.val = val
        self.left = nil
        self.right = nil
    }
    
    public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
        self.val = val
        self.left = left
        self.right = right
    }
}

class BottomLeftTreeValue {
    
    func findBottomLeftValue(_ node: TreeNode?) -> Int {
        
        var leftValue = 0
        var queue: [TreeNode?] = [node]
        
        while queue.count != 0 {
            let childNode = queue.remove(at: 0)
            if let rightNode = childNode?.right {queue.append(rightNode)}
            if let leftNode = childNode?.left {queue.append(leftNode)}
            leftValue = childNode?.val ?? -2
            
        }
        return leftValue
    }
    
    func printResult(_ node: TreeNode?) {
        print(findBottomLeftValue(node))
    }
    
}
