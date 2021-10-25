// Solved by Xecca

import CoreGraphics

//189. Rotate Array
//Difficult: Medium
//https://leetcode.com/problems/rotate-array/

//Runtime: 305 ms, faster than 65.20% of Swift online submissions for Rotate Array.
//Memory Usage: 21.3 MB, less than 67.24% of Swift online submissions for Rotate Array.

//

//Given an array, rotate the array to the right by k steps, where k is non-negative.
//
//Constraints:
//
//1 <= nums.length <= 10^5
//-231 <= nums[i] <= 231 - 1
//0 <= k <= 10^5
//
//
//Follow up:
//
//Try to come up with as many solutions as you can. There are at least three different ways to solve this problem.
//Could you do it in-place with O(1) extra space?

//

// my new solution:
func rotate(_ nums: inout [Int], _ k: Int) {
    var newK = k
    let length = nums.count
    
    while newK > length {
        newK -= length
    }
    
    var newNums = Array(repeating: 0, count: nums.count)
    var startInd = newK
    var i = 0

    while startInd < length {
        newNums[startInd] = nums[i]
        startInd += 1
        i += 1
    }
    startInd = 0
    i = length - newK
    while i < length {
        newNums[startInd] = nums[i]
        i += 1
        startInd += 1
    }
    
    nums = newNums
}

//      the best runtime: 60ms
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

//Input: nums = [1,2,3,4,5,6,7], k = 3
//Output: [5,6,7,1,2,3,4]
//Explanation:
//rotate 1 steps to the right: [7,1,2,3,4,5,6]
//rotate 2 steps to the right: [6,7,1,2,3,4,5]
//rotate 3 steps to the right: [5,6,7,1,2,3,4]
//Example 2:
//
//Input: nums = [-1,-100,3,99], k = 2
//Output: [3,99,-1,-100]
//Explanation:
//rotate 1 steps to the right: [99,-1,-100,3]
//rotate 2 steps to the right: [3,99,-1,-100]

//Test cases:

let input = [1,2,3,4,5,6,7]
let answer = [5,6,7,1,2,3,4]

if rotate(self: input, by: 3) == answer { print("Correct!") } else { print("Error! Expexted: \(answer)") }

