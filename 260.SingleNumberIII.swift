// Solved by Xecca

import Foundation

//260. Single Number III
//Difficult: Medium
//https://leetcode.com/problems/single-number-iii/

//Runtime: 60 ms, faster than 90.28% of Swift online submissions for Single Number III.
//Memory Usage: 14.9 MB, less than 20.14% of Swift online submissions for Single Number III.
    
//

//Given an integer array nums, in which exactly two elements appear only once and all the other elements appear exactly twice. Find the two elements that appear only once. You can return the answer in any order.
//
//You must write an algorithm that runs in linear runtime complexity and uses only constant extra space.
//
//Constraints:
//
//2 <= nums.length <= 3 * 10^4
//-2^31 <= nums[i] <= 2^31 - 1
//Each integer in nums will appear twice, only two integers will appear once.

//

func singleNumber(_ nums: [Int]) -> [Int] {
    let sortedNums = nums.sorted()
    let setOfNums = Set(nums)
    var finalArr: [Int] = Array(repeating: 0, count: setOfNums.count - (nums.count - setOfNums.count))
    var j = 0
    var i = nums.count - 1
    
    while i > 0 {
        if sortedNums[i] != sortedNums[i - 1] {
            finalArr[j] = sortedNums[i]
            j += 1
            i -= 1
        } else {
            i -= 2
        }
    }
    if i == 0 && sortedNums[i] != sortedNums[i + 1] {
        finalArr[j] = sortedNums[i]
    }
    
    return finalArr
}

//Example 1:
//
//Input: nums = [1,2,1,3,2,5]
//Output: [3,5]
//Explanation:  [5, 3] is also a valid answer.
//Example 2:
//
//Input: nums = [-1,0]
//Output: [-1,0]
//Example 3:
//
//Input: nums = [0,1]
//Output: [1,0]

//Test cases:

let input = [1,2,1,3,2,5]
//let input2 = "babababab"
let answer = [3,5]

if singleNumber(input) == answer { print("Correct!") } else { print("Error! Expexted: \(answer)") }

