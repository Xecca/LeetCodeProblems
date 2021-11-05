// Solved by Xecca

import Foundation

//977. Squares of a Sorted Array
//Difficult: Easy
//https://leetcode.com/problems/squares-of-a-sorted-array/

//Runtime: 216 ms, faster than 95.66% of Swift online submissions for Squares of a Sorted Array.
//Memory Usage: 15.4 MB, less than 80.42% of Swift online submissions for Squares of a Sorted Array.

//

//Given an integer array nums sorted in non-decreasing order, return an array of the squares of each number sorted in non-decreasing order.
//
//Constraints:
//
//1 <= nums.length <= 10^4
//-104 <= nums[i] <= 10^4
//nums is sorted in non-decreasing order.
//

func sortedSquares(_ nums: [Int]) -> [Int] {
    let length = nums.count
    var squareNums: [Int] = Array(repeating: 0, count: length)
    var i = 0
    
    while i < length {
        squareNums[i] = nums[i] * nums[i]
        i += 1
    }
    
    return squareNums.sorted()
    
}

//Example 1:
//
//Input: nums = [-4,-1,0,3,10]
//Output: [0,1,9,16,100]
//Explanation: After squaring, the array becomes [16,1,0,9,100].
//After sorting, it becomes [0,1,9,16,100].
//Example 2:
//
//Input: nums = [-7,-3,2,3,11]
//Output: [4,9,9,49,121]

//Test cases:

var input = [-7,-3,2,3,11]
let answer = [4,9,9,49,121]

if sortedSquares(input) == answer { print("Correct!") } else { print("Error! Expexted: \(answer)") }

