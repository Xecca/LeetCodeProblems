// Solved by Xecca

//189. Rotate Array
//Difficult: Medium
//https://leetcode.com/problems/rotate-array/

//Runtime: 68 ms, faster than 13.77% of Swift online submissions for Rotate Array.
//Memory Usage: 15.4 MB, less than 57.56% of Swift online submissions for Rotate Array.

//
//Given an array, rotate the array to the right by k steps, where k is non-negative.
//
//Follow up:
//
//Try to come up as many solutions as you can, there are at least 3 different ways to solve this problem.
//Could you do it in-place with O(1) extra space?

//Constraints:
//
//1 <= nums.length <= 2 * 104
//-231 <= nums[i] <= 231 - 1
//0 <= k <= 105
//

//     func rotate(_ nums: inout [Int], _ k: Int) {
//         var i = 0
//         let length = nums.count
//         var swap = 0
//         var newArr = nums

//         while i < length {
//             swap = (i + k) % nums.count
//             newArr[swap] = nums[i]
//             i += 1
//         }
//         nums = newArr
//     }
    func rotate(_ nums: inout [Int], _ k: Int) {
        var i = 0
        let lastNum = nums.count - 1

        while i < k {
            nums.insert(nums[lastNum], at: 0)
            nums.remove(at: lastNum + 1)
            i += 1
        }
    }

//Example 1:
//Input:
var nums = [1,2,3,4,5,6,7], k = 3
//Output: [5,6,7,1,2,3,4]
//Explanation:
//rotate 1 steps to the right: [7,1,2,3,4,5,6]
//rotate 2 steps to the right: [6,7,1,2,3,4,5]
//rotate 3 steps to the right: [5,6,7,1,2,3,4]
//Example 2:
//Input: nums = [-1,-100,3,99], k = 2
//Output: [3,99,-1,-100]
//Explanation:
//rotate 1 steps to the right: [99,-1,-100,3]
//rotate 2 steps to the right: [3,99,-1,-100]

//Test cases:

rotate(&nums, 3)

//if rotate(&nums, 3) { print("Correct!") } else { print("Error! Expected: \("")") }

