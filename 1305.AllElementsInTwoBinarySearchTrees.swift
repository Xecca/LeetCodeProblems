// Solved by Xecca

import Foundation

//1305. All Elements in Two Binary Search Trees
//Difficult: Medium
//https://leetcode.com/problems/all-elements-in-two-binary-search-trees/

//Runtime: 620 ms, faster than 86.96% of Swift online submissions for All Elements in Two Binary Search Trees.
//Memory Usage: 16.7 MB, less than 78.26% of Swift online submissions for All Elements in Two Binary Search Trees.

//

//Given two binary search trees root1 and root2, return a list containing all the integers from both trees sorted in ascending order.

//
//Constraints:
//
//The number of nodes in each tree is in the range [0, 5000].
//-10^5 <= Node.val <= 10^5

//

/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public var val: Int
 *     public var left: TreeNode?
 *     public var right: TreeNode?
 *     public init() { self.val = 0; self.left = nil; self.right = nil; }
 *     public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
 *     public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
 *         self.val = val
 *         self.left = left
 *         self.right = right
 *     }
 * }
 */
class Solution {
    func getAllElements(_ root1: TreeNode?, _ root2: TreeNode?) -> [Int] {
        var arr: [Int] = []
        
        getArrFromNode(root1, &arr)
        getArrFromNode(root2, &arr)
        
        return arr.sorted()
    }
    
    func getArrFromNode(_ root: TreeNode?, _ arr: inout [Int]) {
        guard let head = root else {
            return
        }
        
        getArrFromNode(head.left, &arr)
        arr.append(head.val)
        getArrFromNode(head.right, &arr)
    }
}

//Example 1:
//
//Input: root1 = [2,1,4], root2 = [1,0,3]
//Output: [0,1,1,2,3,4]
//Example 2:
//
//Input: root1 = [1,null,8], root2 = [8,1]
//Output: [1,1,8,8]

//Test cases:

let input = "FlaG"
let answer = [0,1,1,2,3,4]

if getArrElements([2,1,4], [1,0,3]) == answer { print("Correct!") } else { print("Error! Expexted: \(answer)") }

