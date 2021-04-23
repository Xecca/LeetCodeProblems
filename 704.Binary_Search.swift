// Solved by Xecca

//704. Binary Search
//Difficult: Easy
//https://leetcode.com/problems/binary-search/

//Runtime: 288 ms, faster than 95.20% of Swift online submissions for Binary Search.
//Memory Usage: 14 MB, less than 81.18% of Swift online submissions for Binary Search.

//

//Given an array of integers nums which is sorted in ascending order, and an integer target, write a function to search target in nums. If target exists, then return its index. Otherwise, return -1.

//Constraints:
//
//1 <= nums.length <= 104
//-9999 <= nums[i], target <= 9999
//All the integers in nums are unique.
//nums is sorted in an ascending order.

//

func search(_ nums: [Int], _ target: Int) -> Int {
    
        if target >= nums[0] && target <= nums[nums.count - 1] {
            
            var minIndex = 0
            var maxIndex = nums.count - 1
            var middle = 0
        
            while maxIndex >= minIndex {
                middle = (maxIndex + minIndex) / 2
                
                if target > nums[middle] {
                    minIndex = middle + 1
                } else if target < nums[middle] {
                    maxIndex = middle - 1
                } else {
                    return middle
                }
            }
        }
        
        return -1
    }
    
    // version 2:
//     func search(_ nums: [Int], _ target: Int) -> Int {
        
//         var i = 0
        
//         while i < nums.count && nums[i] != target {
//             i += 1
//         }
//         if i == nums.count {
//             return -1
//         }
//         return i
//     }

//Example 1:
//
//Input: nums = [-1,0,3,5,9,12], target = 9
//Output: 4
//Explanation: 9 exists in nums and its index is 4
//Example 2:
//
//Input: nums = [-1,0,3,5,9,12], target = 2
//Output: -1
//Explanation: 2 does not exist in nums so return -1

//Test cases:

if search([-1,0,3,5,9,12], 9) == 4 { print("Correct!") } else { print("Error! Expected: \(4)") }
if search([-1,0,3,5,9,12], 2) == -1 { print("Correct!") } else { print("Error! Expected: \(-1)") }
if search([5], 5) == 0 { print("Correct!") } else { print("Error! Expected: \(0)") }

