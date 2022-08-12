// Solved by Xecca

import Foundation

//53. Maximum Subarray
//Difficult: Medium
//https://leetcode.com/problems/sum-of-two-integers/

//Runtime: 771 ms, faster than 95.23% of Swift online submissions for Maximum Subarray.
//Memory Usage: 18.7 MB, less than 21.78% of Swift online submissions for Maximum Subarray.

//

//Given an integer array nums, find the contiguous subarray (containing at least one number) which has the largest sum and return its sum.

//A subarray is a contiguous part of an array.

//

//Constraints:
//
//1 <= nums.length <= 10^5
//-10^4 <= nums[i] <= 10^4

//

func maxSubArray(_ nums: [Int]) -> Int {
    var maxSum = nums[0]
    var currSum = 0
    
    for num in nums {
        if currSum < 0 {
            currSum = 0
        }
        currSum += num
        maxSum = max(maxSum, currSum)
    }
    
    return maxSum
}

//Example 1:
//
//Input: nums = [-2,1,-3,4,-1,2,1,-5,4]
//Output: 6
//Explanation: [4,-1,2,1] has the largest sum = 6.
//Example 2:
//
//Input: nums = [1]
//Output: 1
//Example 3:
//
//Input: nums = [5,4,-1,7,8]
//Output: 23

//Test cases:

let input = [-2,1,-3,4,-1,2,1,-5,4]
let answer = 6

if maxSubArray(input) == answer { print("Correct!") } else { print("Error! Expexted: \(answer)") }

