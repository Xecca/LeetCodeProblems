// Solved by Xecca

//747. Largest Number At Least Twice of Others
//Difficult: Easy
//https://leetcode.com/problems/largest-number-at-least-twice-of-others/

//Runtime: 4 ms, faster than 97.62% of Swift online submissions for Largest Number At Least Twice of Others.
//Memory Usage: 14 MB, less than 57.14% of Swift online submissions for Largest Number At Least Twice of Others.

//

//Given an array of integers nums, calculate the pivot index of this array.
//
//The pivot index is the index where the sum of all the numbers strictly to the left of the index is equal to the sum of all the numbers strictly to the index's right.
//
//If the index is on the left edge of the array, then the left sum is 0 because there are no elements to the left. This also applies to the right edge of the array.
//
//Return the leftmost pivot index. If no such index exists, return -1.
//
//Constraints:
//
//1 <= nums.length <= 50
//0 <= nums[i] <= 100
//The largest element in nums is unique.

//

func dominantIndex(_ nums: [Int]) -> Int {
    var i = 0
    var maxNum = nums[0]
    var maxIndex = 0
    let length = nums.count
    
    while i < length {
        if nums[i] > maxNum {
            maxNum = nums[i]
            maxIndex = i
        }
        i += 1
    }
    i = 0
    while i < length {
        if nums[i] * 2 > maxNum && i != maxIndex {
            return -1
        }
        i += 1
    }
    
    return maxIndex
}

//

//Example 1:
//
//Input: nums = [3,6,1,0]
//Output: 1
//Explanation: 6 is the largest integer.
//For every other number in the array x, 6 is at least twice as big as x.
//The index of value 6 is 1, so we return 1.
//Example 2:
//
//Input: nums = [1,2,3,4]
//Output: -1
//Explanation: 4 is less than twice the value of 3, so we return -1.
//Example 3:
//
//Input: nums = [1]
//Output: 0
//Explanation: 1 is trivially at least twice the value as any other number because there are no other numbers.

//Test cases:

if dominantIndex([1,2,3,4]) == -1 { print("Correct!") } else { print("Error! Expexted: \(-1)") }

