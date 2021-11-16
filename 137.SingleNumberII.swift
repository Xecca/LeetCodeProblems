// Solved by Xecca

import Foundation

//137. Single Number II
//Difficult: Medium
//https://leetcode.com/problems/single-number-ii/

//Runtime: 44 ms, faster than 75.56% of Swift online submissions for Single Number II.
//Memory Usage: 14.7 MB, less than 40.00% of Swift online submissions for Single Number II.
    
//

//Given an integer array nums where every element appears three times except for one, which appears exactly once. Find the single element and return it.
//
//You must implement a solution with a linear runtime complexity and use only constant extra space.
//
//Constraints:
//
//2 <= nums.length <= 3 * 10^4
//-2^31 <= nums[i] <= 2^31 - 1
//Each element in nums appears exactly three times except for one element which appears once.

//

func singleNumber(_ nums: [Int]) -> Int {
    let sortedNums = nums.sorted()
    var i = nums.count - 1
    
    while i > 2 {
        if sortedNums[i] != sortedNums[i - 2] {
            return sortedNums[i]
        }
        i -= 3
    }
    return sortedNums[0]
}

//Example 1:
//
//Input: nums = [2,2,3,2]
//Output: 3
//Example 2:
//
//Input: nums = [0,1,0,1,0,1,99]
//Output: 99

//Test cases:

let input = [0,1,0,1,0,1,99]
//let input2 = "babababab"
let answer = 99

if singleNumber(input) == answer { print("Correct!") } else { print("Error! Expexted: \(answer)") }

