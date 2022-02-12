// Solved by Xecca

import Foundation

//2164. Sort Even and Odd Indices Independently
//Difficult: Easy
//https://leetcode.com/problems/sort-even-and-odd-indices-independently/

//Runtime: 20 ms, faster than 100.00% of Swift online submissions for Sort Even and Odd Indices Independently.
//Memory Usage: 14.4 MB, less than 13.89% of Swift online submissions for Sort Even and Odd Indices Independently.

//

//You are given a 0-indexed integer array nums. Rearrange the values of nums according to the following rules:
//
//Sort the values at odd indices of nums in non-increasing order.
//For example, if nums = [4,1,2,3] before this step, it becomes [4,3,2,1] after. The values at odd indices 1 and 3 are sorted in non-increasing order.
//Sort the values at even indices of nums in non-decreasing order.
//For example, if nums = [4,1,2,3] before this step, it becomes [2,1,4,3] after. The values at even indices 0 and 2 are sorted in non-decreasing order.
//Return the array formed after rearranging the values of nums.

//
//Constraints:
//
//1 <= nums.length <= 100
//1 <= nums[i] <= 100

//

func sortEvenOdd(_ nums: [Int]) -> [Int] {
    var newNums = nums
    var i = 0
    let length = nums.count
    
    while i < length - 1 {
        if i % 2 == 0 {
            evenNonDecreasingOrder(&newNums, i, length)
        } else {
            oddNonIncreasingOrder(&newNums, i, length)
        }
        i += 1
    }
    
    return newNums
}

func oddNonIncreasingOrder(_ nums: inout [Int], _ startPos: Int, _ length: Int) {
    var j = startPos + 1

    while j < length {
        if nums[startPos] < nums[j] && j % 2 != 0 {
            let swap = nums[startPos]
            nums[startPos] = nums[j]
            nums[j] = swap
        }
        j += 1
    }
}

func evenNonDecreasingOrder(_ nums: inout [Int], _ startPos: Int, _ length: Int) {
    var j = startPos + 1

    while j < length {
        if nums[startPos] > nums[j] && j % 2 == 0 {
            let swap = nums[startPos]
            nums[startPos] = nums[j]
            nums[j] = swap
        }
        j += 1
    }
}

//Example 1:
//
//Input: nums = [4,1,2,3]
//Output: [2,3,4,1]
//Explanation:
//First, we sort the values present at odd indices (1 and 3) in non-increasing order.
//So, nums changes from [4,1,2,3] to [4,3,2,1].
//Next, we sort the values present at even indices (0 and 2) in non-decreasing order.
//So, nums changes from [4,1,2,3] to [2,3,4,1].
//Thus, the array formed after rearranging the values is [2,3,4,1].
//Example 2:
//
//Input: nums = [2,1]
//Output: [2,1]
//Explanation:
//Since there is exactly one odd index and one even index, no rearrangement of values takes place.
//The resultant array formed is [2,1], which is the same as the initial array.

//Test cases:

let input = [4,1,2,3]
let answer = [2,3,4,1]

if sortEvenOdd(input) == answer { print("Correct!") } else { print("Error! Expexted: \(answer)") }

