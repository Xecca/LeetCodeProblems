// Solved by Xecca

//1512. Number of Good Pairs
//Сomplexity: Easy
//https://leetcode.com/problems/number-of-good-pairs/

//----------------------------------------------------
//Runtime: 0 ms, faster than 100.00% of Swift online submissions for Number of Good Pairs.
//Memory Usage: 20.5 MB, less than 94.12% of Swift online submissions for Number of Good Pairs.
//----------------------------------------------------

//Given an array of integers nums.
//
//A pair (i,j) is called good if nums[i] == nums[j] and i < j.
//
//Return the number of good pairs.

//----------------------------------------------------

func numIdenticalPairs(_ nums: [Int]) -> Int {
    var goodPairsCount = 0
    var i = 0
    var j = 1
    let length = nums.count
    
    while i < length {
        j = i + 1
        while j < length {
            if nums[i] == nums[j] {
                goodPairsCount += 1
            }
            j += 1
        }
        i += 1
    }
    
    return goodPairsCount
}

//Input:
let nums = [1,2,3,1,1,3]
//Output: 4
//Explanation: There are 4 good pairs (0,3), (0,4), (3,4), (2,5) 0-indexed.

numIdenticalPairs(nums)

