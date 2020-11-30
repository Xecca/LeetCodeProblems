//
//  LeetCodeProblems
//
//  Created by Xecca

//283. Move Zeroes
//Difficult: Easy
//https://leetcode.com/problems/move-zeroes/

//Runtime: 36 ms, faster than 91.62% of Swift online submissions for Move Zeroes.
//Memory Usage: 14.6 MB, less than 96.98% of Swift online submissions for Move Zeroes.

//
//Given an array nums, write a function to move all 0's to the end of it while maintaining the relative order of the non-zero elements.
//

func moveZeroes(_ nums: inout [Int]) {
    var i = nums.count - 1
    
    while i >= 0 {
        if nums[i] == 0 {
            nums.remove(at: i)
            nums.append(0)
        }
        i -= 1
    }
}

//Example:
//
//Input: [0,1,0,3,12]
//Output: [1,3,12,0,0]
//Note:
//
//You must do this in-place without making a copy of the array.
//Minimize the total number of operations.

//Test cases:

//if moveZeroes([0,1,0,3,12]) { print("Correct!") } else { print("Error!") }


