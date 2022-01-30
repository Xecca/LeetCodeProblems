// Solved by Xecca

import Foundation

//35. Search Insert Position
//Difficult: Easy
//https://leetcode.com/problems/search-insert-position/

//Runtime: 20 ms, faster than 100.00% of Swift online submissions for Search Insert Position.
//Memory Usage: 14.6 MB, less than 10.01% of Swift online submissions for Search Insert Position.

//

//Given a sorted array of distinct integers and a target value, return the index if the target is found. If not, return the index where it would be if it were inserted in order.
//
//You must write an algorithm with O(log n) runtime complexity.

//
//Constraints:
//
//1 <= nums.length <= 10^4
//-10^4 <= nums[i] <= 10^4
//nums contains distinct values sorted in ascending order.
//-10^4 <= target <= 10^4

//

func searchInsert(_ nums: [Int], _ target: Int) -> Int {
    let length = nums.count
    var insPos = 0
    
    if target > nums[length - 1] {
        insPos = length
    } else if target < nums[0] {
        insPos = 0
    } else {
        var leftInd = 0
        var rightInd = length - 1
        var middle = 0
        
        while leftInd < rightInd {
            middle = (rightInd + leftInd) / 2
            if target < nums[middle] {
                if rightInd - leftInd == 1 {
                    break
                }
                rightInd = middle
            } else if target > nums[middle] {
                if rightInd - leftInd == 1 {
                    middle += 1
                    break
                }
                leftInd = middle
            } else {
                return middle
            }
        }
        insPos = middle
    }
    
    return insPos
}

//Example 1:
//
//Input: nums = [1,3,5,6], target = 5
//Output: 2
//Example 2:
//
//Input: nums = [1,3,5,6], target = 2
//Output: 1
//Example 3:
//
//Input: nums = [1,3,5,6], target = 7
//Output: 4

//Test cases:

let input = [1,3,5,6]
let input2 = 2
let answer = 1

if searchInsert(input, input2) == answer { print("Correct!") } else { print("Error! Expexted: \(answer)") }

