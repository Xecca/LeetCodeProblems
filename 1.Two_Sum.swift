//1. Two Sum
//Сomplexity: Easy
//https://leetcode.com/problems/two-sum/

//----------------------------------------------------
//Runtime: 376 ms, faster than 30.97% of Swift online submissions for Two Sum.
//Memory Usage: 20.9 MB, less than 84.62% of Swift online submissions for Two Sum.
//----------------------------------------------------

//Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.
//
//You may assume that each input would have exactly one solution, and you may not use the same element twice.
//
//You can return the answer in any order.

//----------------------------------------------------

func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    var i = 0
    var j = 1
    
    while i < nums.count {
        let tempNum = target - nums[i]
        while j < nums.count {
            
            if nums[j] == tempNum && i != j {
                return [i, j]
            }
            j += 1
        }
        j = 0
        i += 1
    }
    
    return [0]
}

//Input:
let nums = [3,2,4], target = 6
//Output: [1,2]

twoSum(nums, target)
