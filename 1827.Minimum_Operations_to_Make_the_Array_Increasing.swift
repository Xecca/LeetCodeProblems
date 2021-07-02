// Solved by Xecca

//1827. Minimum Operations to Make the Array Increasing
//Difficult: Easy
//https://leetcode.com/problems/minimum-operations-to-make-the-array-increasing/

//Runtime: 84 ms, faster than 100.00% of Swift online submissions for Minimum Operations to Make the Array Increasing.
//Memory Usage: 14.1 MB, less than 52.24% of Swift online submissions for Minimum Operations to Make the Array Increasing.

//

//You are given an integer array nums (0-indexed). In one operation, you can choose an element of the array and increment it by 1.
//
//For example, if nums = [1,2,3], you can choose to increment nums[1] to make nums = [1,3,3].
//Return the minimum number of operations needed to make nums strictly increasing.
//
//An array nums is strictly increasing if nums[i] < nums[i+1] for all 0 <= i < nums.length - 1. An array of length 1 is trivially strictly increasing.
//
//Constraints:
//
//1 <= nums.length <= 5000
//1 <= nums[i] <= 10^4

//

func minOperations(_ nums: [Int]) -> Int {
    if nums.count == 1 {
        return 0
    }

    var i = 1
    var prevNum = nums[0]
    var operations = 0
    
    while i < nums.count {
        if prevNum >= nums[i]  {
            prevNum = prevNum + 1
            operations += prevNum - nums[i]
        } else {
            prevNum = nums[i]
        }
        i += 1
    }

    return operations
}

//Example 1:
//
//Input: nums = [1,1,1]
//Output: 3
//Explanation: You can do the following operations:
//1) Increment nums[2], so nums becomes [1,1,2].
//2) Increment nums[1], so nums becomes [1,2,2].
//3) Increment nums[2], so nums becomes [1,2,3].
//Example 2:
//
//Input: nums = [1,5,2,4,1]
//Output: 14
//Example 3:
//
//Input: nums = [8]
//Output: 0

//Test cases:

if minOperations([1,5,2,4,1]) == 14 { print("Correct!") } else { print("Error! Expected: \(14)") }

