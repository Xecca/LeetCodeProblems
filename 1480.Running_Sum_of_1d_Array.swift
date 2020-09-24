// Solved by Xecca

//1480. Running Sum of 1d Array
//Сomplexity: Easy
//https://leetcode.com/problems/running-sum-of-1d-array/

//----------------------------------------------------
//Runtime: 12 ms, faster than 100.00% of Swift online submissions for Running Sum of 1d Array.
//Memory Usage: 20.9 MB, less than 71.34% of Swift online submissions for Running Sum of 1d Array.
//----------------------------------------------------

//Given an array nums. We define a running sum of an array as runningSum[i] = sum(nums[0]…nums[i]).
//
//Return the running sum of nums.

//----------------------------------------------------

func runningSum(_ nums: [Int]) -> [Int] {
    var sumArr = [Int]()
    var currentSum = 0
    var i = 0
    
    while i < nums.count {
        currentSum += nums[i]
        sumArr.append(currentSum)
        i += 1
    }
    
    return sumArr
}

//Input:
let nums = [1,2,3,4]
//Output: [1,3,6,10]
//Explanation: Running sum is obtained as follows: [1, 1+2, 1+2+3, 1+2+3+4].

runningSum(nums)

