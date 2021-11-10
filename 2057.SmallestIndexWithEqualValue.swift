// Solved by Xecca

import Foundation

//2057. Smallest Index With Equal Value
//Difficult: Easy
//https://leetcode.com/problems/smallest-index-with-equal-value/

//Runtime: 40 ms, faster than 97.62% of Swift online submissions for Smallest Index With Equal Value.
//Memory Usage: 13.9 MB, less than 90.48% of Swift online submissions for Smallest Index With Equal Value.
    
//

//Given a 0-indexed integer array nums, return the smallest index i of nums such that i mod 10 == nums[i], or -1 if such index does not exist.
//
//x mod y denotes the remainder when x is divided by y.
//
//Constraints:
//
//1 <= nums.length <= 100
//0 <= nums[i] <= 9

//

func smallestEqual(_ nums: [Int]) -> Int {
    var i = 0
    let length = nums.count

    while i < length {
        if i % 10 == nums[i] {
            return i
        }
        i += 1
    }
    
    return -1
}

//Example 1:
//
//Input: nums = [0,1,2]
//Output: 0
//Explanation:
//i=0: 0 mod 10 = 0 == nums[0].
//i=1: 1 mod 10 = 1 == nums[1].
//i=2: 2 mod 10 = 2 == nums[2].
//All indices have i mod 10 == nums[i], so we return the smallest index 0.
//Example 2:
//
//Input: nums = [4,3,2,1]
//Output: 2
//Explanation:
//i=0: 0 mod 10 = 0 != nums[0].
//i=1: 1 mod 10 = 1 != nums[1].
//i=2: 2 mod 10 = 2 == nums[2].
//i=3: 3 mod 10 = 3 != nums[3].
//2 is the only index which has i mod 10 == nums[i].
//Example 3:
//
//Input: nums = [1,2,3,4,5,6,7,8,9,0]
//Output: -1
//Explanation: No index satisfies i mod 10 == nums[i].
//Example 4:
//
//Input: nums = [2,1,3,5,2]
//Output: 1
//Explanation: 1 is the only index with i mod 10 == nums[i].

//Test cases:

let input1 = [1,2]
let input2 = [3,4]
let answer = 2.50000

if findMedianSortedArrays(input1, input2) == answer { print("Correct!") } else { print("Error! Expexted: \(answer)") }

