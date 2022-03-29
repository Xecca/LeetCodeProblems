// Solved by Xecca

import Foundation

//287. Find the Duplicate Number
//Difficult: Medium
//https://leetcode.com/problems/find-the-duplicate-number/

//Runtime: 765 ms, faster than 77.46% of Swift online submissions for Find the Duplicate Number.
//Memory Usage: 19.1 MB, less than 9.83% of Swift online submissions for Find the Duplicate Number.

//
//Given an array of integers nums containing n + 1 integers where each integer is in the range [1, n] inclusive.
//
//There is only one repeated number in nums, return this repeated number.
//
//You must solve the problem without modifying the array nums and uses only constant extra space.
//
//Constraints:
//
//1 <= n <= 10^5
//nums.length == n + 1
//1 <= nums[i] <= n
//All the integers in nums appear only once except for precisely one integer which appears two or more times.

//

func findDuplicate(_ nums: [Int]) -> Int {
    var dict: [Int: Int] = [:]
    
    for num in nums {
        if dict[num] != nil {
            return num
        } else {
            dict[num] = 1
        }
    }
    
    return 0
}

//Example 1:
//
//Input: nums = [1,3,4,2,2]
//Output: 2
//Example 2:
//
//Input: nums = [3,1,3,4,2]
//Output: 3

//Test cases:

let input = [1,3,4,2,2]
let answer = 2

if findDuplicate(input) == answer { print("Correct!") } else { print("Error! Expexted: \(answer)") }

