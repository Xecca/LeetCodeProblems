// Solved by Xecca

//1. Two Sum
//Difficult: Easy
//https://leetcode.com/problems/two-sum/

//Runtime: Runtime: 72 ms, faster than 36.89% of Swift online submissions for Two Sum.
//Memory Usage: 14.1 MB, less than 85.80% of Swift online submissions for Two Sum.

//

//Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.
//
//You may assume that each input would have exactly one solution, and you may not use the same element twice.
//
//You can return the answer in any order.
//
//Constraints:

//2 <= nums.length <= 10^4
//-10^9 <= nums[i] <= 10^9
//-10^9 <= target <= 10^9
//Only one valid answer exists.

//

func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    var i = nums.count - 1
    var j = 0

    while i > 0 {
        while j < i {
            if nums[i] + nums[j] == target {
                return [j, i]
            }
            j += 1
        }
        i -= 1
        j = 0
    }
    
    return [0]
}

//Example 1:
//
//Input: nums = [2,7,11,15], target = 9
//Output: [0,1]
//Output: Because nums[0] + nums[1] == 9, we return [0, 1].
//Example 2:
//
//Input: nums = [3,2,4], target = 6
//Output: [1,2]
//Example 3:
//
//Input: nums = [3,3], target = 6
//Output: [0,1]

//Test cases:

if twoSum([3,2,4], 6) == [1,2] { print("Correct!") } else { print("Error! Expected: \([1,2])") }

