// Solved by Xecca

//2016. Maximum Difference Between Increasing Elements
//Difficult: Easy
//https://leetcode.com/problems/maximum-difference-between-increasing-elements/submissions/

//Runtime: 24 ms, faster than 55.81% of Swift online submissions for Maximum Difference Between Increasing Elements.
//Memory Usage: 13.8 MB, less than 86.05% of Swift online submissions for Maximum Difference Between Increasing Elements.

//

//Given a 0-indexed integer array nums of size n, find the maximum difference between nums[i] and nums[j] (i.e., nums[j] - nums[i]), such that 0 <= i < j < n and nums[i] < nums[j].
//
//Return the maximum difference. If no such i and j exists, return -1.

//Constraints:
//
//n == nums.length
//2 <= n <= 1000
//1 <= nums[i] <= 10^9

//

func maximumDifference(_ nums: [Int]) -> Int {
    var i = 0
    var j = 1
    var maxDiff = -1
    
    while i < nums.count - 1 {
        while j < nums.count {
            if nums[i] < nums[j] {
                let diff = nums[j] - nums[i]
                if diff > maxDiff {
                    maxDiff = diff
                }
            }
            j += 1
        }
        i += 1
        j = i + 1
    }
    
    return maxDiff
}

//

//Example 1:
//
//Input: nums = [7,1,5,4]
//Output: 4
//Explanation:
//The maximum difference occurs with i = 1 and j = 2, nums[j] - nums[i] = 5 - 1 = 4.
//Note that with i = 1 and j = 0, the difference nums[j] - nums[i] = 7 - 1 = 6, but i > j, so it is not valid.
//Example 2:
//
//Input: nums = [9,4,3,2]
//Output: -1
//Explanation:
//There is no i and j such that i < j and nums[i] < nums[j].
//Example 3:
//
//Input: nums = [1,5,2,10]
//Output: 9
//Explanation:
//The maximum difference occurs with i = 0 and j = 3, nums[j] - nums[i] = 10 - 1 = 9.

//Test cases:

if maximumDifference([1,5,2,10]) == 9 { print("Correct!") } else { print("Error! Expexted: \(9)") }

