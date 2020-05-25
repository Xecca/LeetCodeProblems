//1389. Create Target Array in the Given Order
//https://leetcode.com/problems/power-of-two/
//Runtime: 4 ms, faster than 99.32% of Swift online submissions for Create Target Array in the Given Order.
//Memory Usage: 21.2 MB, less than 100.00% of Swift online submissions for Create Target Array in the Given Order.
//----------------------------------------------------
//Given two arrays of integers nums and index. Your task is to create target array under the following rules:
//
//Initially target array is empty.
//From left to right read nums[i] and index[i], insert at index index[i] the value nums[i] in target array.
//Repeat the previous step until there are no elements to read in nums and index.
//Return the target array.
//
//It is guaranteed that the insertion operations will be valid.
//----------------------------------------------------

func createTargetArray(_ nums: [Int], _ index: [Int]) -> [Int] {
    var target: [Int] = []
    var i = 0
    let length = nums.count
    
    while i < length {
        target.insert(nums[i], at: index[i])
        i += 1
    }
    return target
}

//Input:
let nums = [0,1,2,3,4], index = [0,1,2,2,1]
//Output: [0,4,1,3,2]

createTargetArray(nums, index)

