// Solved by Xecca

import Foundation

//414. Third Maximum Number
//Difficult: Easy
//https://leetcode.com/problems/third-maximum-number/

//Runtime: 28 ms, faster than 96.43% of Swift online submissions for Third Maximum Number.
//Memory Usage: 14.5 MB, less than 35.71% of Swift online submissions for Third Maximum Number.
    
//

//Given an integer array nums, return the third distinct maximum number in this array. If the third maximum does not exist, return the maximum number.
//
//Constraints:
//
//1 <= nums.length <= 10^4
//-2^31 <= nums[i] <= 2^31 - 1
//

func thirdMax(_ nums: [Int]) -> Int {
    var i = 0
    
    if nums.count == 1 {
        return nums[0]
    }
    var newArr = Set(nums)
    var maxNum = 0
    var currMax = 0
    
    while newArr.count > 0 && i < 3 {
        currMax = newArr.max()!
        if currMax > maxNum {
            maxNum = currMax
        }
        newArr.remove(at: newArr.firstIndex(of: currMax)!)
        i += 1
    }
    if i == 3 {
        return currMax
    }
    
    return maxNum
}

//Example 1:
//
//Input: nums = [3,2,1]
//Output: 1
//Explanation:
//The first distinct maximum is 3.
//The second distinct maximum is 2.
//The third distinct maximum is 1.
//Example 2:
//
//Input: nums = [1,2]
//Output: 2
//Explanation:
//The first distinct maximum is 2.
//The second distinct maximum is 1.
//The third distinct maximum does not exist, so the maximum (2) is returned instead.
//Example 3:
//
//Input: nums = [2,2,3,1]
//Output: 1
//Explanation:
//The first distinct maximum is 3.
//The second distinct maximum is 2 (both 2's are counted together since they have the same value).
//The third distinct maximum is 1.

//Test cases:

var input = [2,2,3,1]
let answer = 1

if thirdMax(input) == answer { print("Correct!") } else { print("Error! Expexted: \(answer)") }

