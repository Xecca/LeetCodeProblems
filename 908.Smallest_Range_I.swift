// Solved by Xecca

//908. Smallest Range I
//Difficult: Easy
//https://leetcode.com/problems/smallest-range-i/

//Runtime: 124 ms, faster than 64.29% of Swift online submissions for Smallest Range I.
//Memory Usage: 14.3 MB, less than 28.57% of Swift online submissions for Smallest Range I.

//

//Given an array nums of integers, for each integer nums[i] we may choose any x with -k <= x <= k, and add x to nums[i].
//
//After this process, we have some array result.
//
//Return the smallest possible difference between the maximum value of result and the minimum value of result.
//
//Note:
//
//1 <= nums.length <= 10000
//0 <= nums[i] <= 10000
//0 <= k <= 10000

//

func smallestRangeI(_ nums: [Int], _ k: Int) -> Int {
    
    let minNum = nums.min()!
    let maxNum = nums.max()!
    
    if (maxNum - minNum) / 2 < k {
        return 0
    }
    
    return (maxNum - k) - (minNum + k)
}

//Example 1:
//
//Input: nums = [1], k = 0
//Output: 0
//Explanation: result = [1]
//Example 2:
//
//Input: nums = [0,10], k = 2
//Output: 6
//Explanation: result = [2,8]
//Example 3:
//
//Input: nums = [1,3,6], k = 3
//Output: 0
//Explanation: result = [3,3,3] or result = [4,4,4]

//Test cases:

if smallestRangeI([0,10], 2) == 6 { print("Correct!") } else { print("Error! Expected: \(6)") }

