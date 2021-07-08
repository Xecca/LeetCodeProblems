// Solved by Xecca

//1913. Maximum Product Difference Between Two Pairs
//Difficult: Easy
//https://leetcode.com/problems/maximum-product-difference-between-two-pairs/

//Runtime: Runtime: 336 ms, faster than 57.69% of Swift online submissions for Maximum Product Difference Between Two Pairs.
//Memory Usage: 14.6 MB, less than 15.38% of Swift online submissions for Maximum Product Difference Between Two Pairs.

//

//The product difference between two pairs (a, b) and (c, d) is defined as (a * b) - (c * d).
//
//For example, the product difference between (5, 6) and (2, 7) is (5 * 6) - (2 * 7) = 16.
//Given an integer array nums, choose four distinct indices w, x, y, and z such that the product difference between pairs (nums[w], nums[x]) and (nums[y], nums[z]) is maximized.
//
//Return the maximum such product difference.
//
//Constraints:
//
//4 <= nums.length <= 104
//1 <= nums[i] <= 104

//

func maxProductDifference(_ nums: [Int]) -> Int {
    let newNum = nums.sorted()
    
    return newNum[nums.count - 1] * newNum[nums.count - 2] - newNum[1] * newNum[0]
}

//Example 1:
//
//Input: nums = [5,6,2,7,4]
//Output: 34
//Explanation: We can choose indices 1 and 3 for the first pair (6, 7) and indices 2 and 4 for the second pair (2, 4).
//The product difference is (6 * 7) - (2 * 4) = 34.
//Example 2:
//
//Input: nums = [4,2,5,9,7,4,8]
//Output: 64
//Explanation: We can choose indices 3 and 6 for the first pair (9, 8) and indices 1 and 5 for the second pair (2, 4).
//The product difference is (9 * 8) - (2 * 4) = 64.

//Test cases:

if maxProductDifference([4,2,5,9,7,4,8]) == 64 { print("Correct!") } else { print("Error! Expected: \(64)") }

