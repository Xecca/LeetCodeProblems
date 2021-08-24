// Solved by Xecca

//976. Largest Perimeter Triangle
//Difficult: Easy
//https://leetcode.com/problems/largest-perimeter-triangle/

//Runtime: 380 ms, faster than 88.89% of Swift online submissions for Largest Perimeter Triangle.
//Memory Usage: 14.3 MB, less than 77.78% of Swift online submissions for Largest Perimeter Triangle.

//

//Given an integer array nums, return the largest perimeter of a triangle with a non-zero area, formed from three of these lengths. If it is impossible to form any triangle of a non-zero area, return 0.

//Constraints:
//
//3 <= nums.length <= 10^4
//1 <= nums[i] <= 10^6

//

func largestPerimeter(_ nums: [Int]) -> Int {
    var i = 0
    let sortedNums = nums.sorted(by: >)
    
    while i < nums.count - 2 {
        if sortedNums[i] < sortedNums[i + 1] + sortedNums[i + 2] {
            return (sortedNums[i] + sortedNums[i + 1] + sortedNums[i + 2])
        }
        i += 1
    }
    return 0
}

Example 1:

//Input: nums = [2,1,2]
//Output: 5
//Example 2:
//
//Input: nums = [1,2,1]
//Output: 0
//Example 3:
//
//Input: nums = [3,2,3,4]
//Output: 10
//Example 4:
//
//Input: nums = [3,6,2,3]
//Output: 8

//Test cases:

if largestPerimeter([1,2,1]) == 0 { print("Correct!") } else { print("Error! Expected: \(0)") }

