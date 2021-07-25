// Solved by Xecca

//1800. Maximum Ascending Subarray Sum
//Difficult: Easy
//https://leetcode.com/problems/maximum-ascending-subarray-sum/

//Runtime: 4 ms, faster than 94.44% of Swift online submissions for Maximum Ascending Subarray Sum.
//Memory Usage: 14.1 MB, less than 50.00% of Swift online submissions for Maximum Ascending Subarray Sum.

//

//Given an array of positive integers nums, return the maximum possible sum of an ascending subarray in nums.
//
//A subarray is defined as a contiguous sequence of numbers in an array.
//
//A subarray [numsl, numsl+1, ..., numsr-1, numsr] is ascending if for all i where l <= i < r, numsi < numsi+1. Note that a subarray of size 1 is ascending.
//
//Constraints:
//
//1 <= nums.length <= 100
//1 <= nums[i] <= 100

//

func maxAscendingSum(_ nums: [Int]) -> Int {
    var maxSum = nums[0]
    var currentSum = nums[0]
    var i = 0
    let length = nums.count - 1
    
    while i < length {
        if nums[i] < nums[i + 1] {
            currentSum += nums[i + 1]
        } else {
            if currentSum > maxSum {
                maxSum = currentSum
            }
            currentSum = nums[i + 1]
        }
        i += 1
    }
    if currentSum > maxSum {
        maxSum = currentSum
    }
    
    return maxSum
}

//Example 1:
//
//Input: nums = [10,20,30,5,10,50]
//Output: 65
//Explanation: [5,10,50] is the ascending subarray with the maximum sum of 65.
//Example 2:
//
//Input: nums = [10,20,30,40,50]
//Output: 150
//Explanation: [10,20,30,40,50] is the ascending subarray with the maximum sum of 150.
//Example 3:
//
//Input: nums = [12,17,15,13,10,11,12]
//Output: 33
//Explanation: [10,11,12] is the ascending subarray with the maximum sum of 33.
//Example 4:
//
//Input: nums = [100,10,1]
//Output: 100

//Test cases:

if maxAscendingSum([12,17,15,13,10,11,12]) == 33 { print("Correct!") } else { print("Error! Expected: \(33)") }

