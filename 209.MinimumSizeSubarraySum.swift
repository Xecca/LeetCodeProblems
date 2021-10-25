// Solved by Xecca

//209. Minimum Size Subarray Sum
//Difficult: Medium
//https://leetcode.com/problems/minimum-size-subarray-sum/

//Runtime: 75 ms, faster than 30.89% of Swift online submissions for Minimum Size Subarray Sum.
//Memory Usage: 14.8 MB, less than 32.52% of Swift online submissions for Minimum Size Subarray Sum.

//

//Given an array of positive integers nums and a positive integer target, return the minimal length of a contiguous subarray [numsl, numsl+1, ..., numsr-1, numsr] of which the sum is greater than or equal to target. If there is no such subarray, return 0 instead.
//
//Constraints:
//
//1 <= target <= 10^9
//1 <= nums.length <= 10^5
//1 <= nums[i] <= 10^5
//
//Follow up: If you have figured out the O(n) solution, try coding another solution of which the time complexity is O(n log(n)).

//

func minSubArrayLen(_ target: Int, _ nums: [Int]) -> Int {
    if nums.reduce(0, +) < target {
        return 0
    }
    
    var left = 0
    var right = 0
    var minLength = Int.max
    var sum = 0
    let length = nums.count
    
    while right < length {
        sum += nums[right]
        right += 1
        while sum >= target {
            minLength = min(minLength, right - left)
            sum -= nums[left]
            left += 1
        }
    }
    
    return minLength == Int.max ? 0 : minLength
}

//Example 1:
//
//Input: target = 7, nums = [2,3,1,2,4,3]
//Output: 2
//Explanation: The subarray [4,3] has the minimal length under the problem constraint.
//Example 2:
//
//Input: target = 4, nums = [1,4,4]
//Output: 1
//Example 3:
//
//Input: target = 11, nums = [1,1,1,1,1,1,1,1]
//Output: 0

//Test cases:

let input = [2,3,1,2,4,3]
let answer = 2

if minSubArrayLen(7, input) == answer { print("Correct!") } else { print("Error! Expexted: \(answer)") }

