// Solved by Xecca

//217. Contains Duplicate
//Difficult: Easy
//https://leetcode.com/problems/contains-duplicate/

//Runtime: Runtime: 152 ms, faster than 39.13% of Swift online submissions for Contains Duplicate.
//Memory Usage: 15.7 MB, less than 73.71% of Swift online submissions for Contains Duplicate.

//

//Given an integer array nums, return true if any value appears at least twice in the array, and return false if every element is distinct.
//
//Constraints:
//
//1 <= nums.length <= 105
//-109 <= nums[i] <= 109

//

func containsDuplicate(_ nums: [Int]) -> Bool {
    let sortedNums = nums.sorted()
    var i = 0
    let length = sortedNums.count - 1
    
    while i < length {
        if sortedNums[i] == sortedNums[i + 1] {
            return true
        }
        i += 1
    }
    return false
}

// // version 2:
//     func containsDuplicate(_ nums: [Int]) -> Bool {

//         if (Array(Set(nums))).count != nums.count {
//             return true
//         }
//         return false

//     }

//Example 1:
//
//Input: nums = [1,2,3,1]
//Output: true
//Example 2:
//
//Input: nums = [1,2,3,4]
//Output: false
//Example 3:
//
//Input: nums = [1,1,1,3,3,4,3,2,4,2]
//Output: true

//Test cases:

if containsDuplicate([1,2,3,1]) == true { print("Correct!") } else { print("Error! Expected: \([1,2,3,1])") }


