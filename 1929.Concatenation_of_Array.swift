// Solved by Xecca

//1929. Concatenation of Array
//Difficult: Easy
//https://leetcode.com/problems/concatenation-of-array/

//Runtime: 60 ms, faster than 94.95% of Swift online submissions for Concatenation of Array.
//Memory Usage: 14.5 MB, less than 23.23% of Swift online submissions for Concatenation of Array.

//

//Given an integer array nums of length n, you want to create an array ans of length 2n where ans[i] == nums[i] and ans[i + n] == nums[i] for 0 <= i < n (0-indexed).
//
//Specifically, ans is the concatenation of two nums arrays.
//
//Return the array ans.
//
//Constraints:
//
//n == nums.length
//1 <= n <= 1000
//1 <= nums[i] <= 1000

//

func getConcatenation(_ nums: [Int]) -> [Int] {
    let numsCount = nums.count * 2
    var numsFinal: [Int] = Array(repeating: 0, count: numsCount)
    var i = 0
    var j = 0
    
    while j < numsCount {
        while i < nums.count {
            numsFinal[j] = nums[i]
            i += 1
            j += 1
        }
        i = 0
    }
    
    return numsFinal
    // return nums + nums
}

//Example 1:
//
//Input: nums = [1,2,1]
//Output: [1,2,1,1,2,1]
//Explanation: The array ans is formed as follows:
//- ans = [nums[0],nums[1],nums[2],nums[0],nums[1],nums[2]]
//- ans = [1,2,1,1,2,1]
//Example 2:
//
//Input: nums = [1,3,2,1]
//Output: [1,3,2,1,1,3,2,1]
//Explanation: The array ans is formed as follows:
//- ans = [nums[0],nums[1],nums[2],nums[3],nums[0],nums[1],nums[2],nums[3]]
//- ans = [1,3,2,1,1,3,2,1]

//Test cases:

if getConcatenation([1,2,1]) == [1,2,1,1,2,1] { print("Correct!") } else { print("Error! Expected: \([1,2,1,1,2,1])") }

