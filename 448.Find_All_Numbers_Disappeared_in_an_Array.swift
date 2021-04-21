// Solved by Xecca

//448. Find All Numbers Disappeared in an Array
//Difficult: Easy
//https://leetcode.com/problems/find-all-numbers-disappeared-in-an-array/

//Runtime: 428 ms, faster than 90.04% of Swift online submissions for Find All Numbers Disappeared in an Array.
//Memory Usage: 16.7 MB, less than 62.55% of Swift online submissions for Find All Numbers Disappeared in an

//

//Given an array nums of n integers where nums[i] is in the range [1, n], return an array of all the integers in the range [1, n] that do not appear in nums.

//Constraints:
//
//n == nums.length
//1 <= n <= 105
//1 <= nums[i] <= n

//

func findDisappearedNumbers(_ nums: [Int]) -> [Int] {

    var i = 0
    var rowOfPairNums = Array(repeating: 0, count: nums.count)
    var missedNums: [Int] = []
    
    for num in nums {
        rowOfPairNums[num - 1] = 1
    }
    
    while i < rowOfPairNums.count {
        if rowOfPairNums[i] == 0 {
            missedNums.append(i + 1)
        }
        i += 1
    }

    return missedNums
}

//Example 1:
//
//Input: nums = [4,3,2,7,8,2,3,1]
//Output: [5,6]
//Example 2:
//
//Input: nums = [1,1]
//Output: [2]

//Test cases:

if findDisappearedNumbers([4,3,2,7,8,2,3,1]) == [5,6] { print("Correct!") } else { print("Error! Expected: \([5,6])") }
if findDisappearedNumbers([1,1]) == [2] { print("Correct!") } else { print("Error! Expected: \([2])") }

