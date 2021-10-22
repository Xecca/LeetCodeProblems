// Solved by Xecca

//485. Max Consecutive Ones
//Difficult: Easy
//https://leetcode.com/problems/max-consecutive-ones/

//Runtime: 240 ms, faster than 80.15% of Swift online submissions for Max Consecutive Ones.
//Memory Usage: 14.3 MB, less than 33.58% of Swift online submissions for Max Consecutive Ones.

//

//Given a binary array nums, return the maximum number of consecutive 1's in the array.
//
//Constraints:
//
//1 <= nums.length <= 10^5
//nums[i] is either 0 or 1.

//

func findMaxConsecutiveOnes(_ nums: [Int]) -> Int {
    
    let splitedNums = nums.split(separator: 0)
    var arrOfOnes: [Int] = Array(repeating: 0, count: splitedNums.count)
    
    for (i, ones) in splitedNums.enumerated() {
        arrOfOnes[i] = ones.count
    }
    
    return arrOfOnes.max() ?? 0
}

//Example 1:
//
//Input: nums = [1,1,0,1,1,1]
//Output: 3
//Explanation: The first two digits or the last three digits are consecutive 1s. The maximum number of consecutive 1s is 3.
//Example 2:
//
//Input: nums = [1,0,1,1,0,1]
//Output: 2

//Test cases:

let input = [1,1,0,1,1,1]
let answer = 3

if findMaxConsecutiveOnes(input) == answer { print("Correct!") } else { print("Error! Expexted: \(answer)") }

