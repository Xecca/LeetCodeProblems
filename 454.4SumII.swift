// Solved by Xecca

import Foundation

//454. 4Sum II
//Difficult: Medium
//https://leetcode.com/problems/4sum-ii/

//Runtime: 184 ms, faster than 71.43% of Swift online submissions for 4Sum II.
//Memory Usage: 14.4 MB, less than 7.14% of Swift online submissions for 4Sum II.

//

//Given four integer arrays nums1, nums2, nums3, and nums4 all of length n, return the number of tuples (i, j, k, l) such that:
//
//0 <= i, j, k, l < n
//nums1[i] + nums2[j] + nums3[k] + nums4[l] == 0

//
//Constraints:
//
//n == nums1.length
//n == nums2.length
//n == nums3.length
//n == nums4.length
//1 <= n <= 200
//-2^28 <= nums1[i], nums2[i], nums3[i], nums4[i] <= 2^28

//

func fourSumCount(_ nums1: [Int], _ nums2: [Int], _ nums3: [Int], _ nums4: [Int]) -> Int {
    var countOfTuples = 0
    var sum: [Int: Int] = [:]
    
    for i in nums1 {
        for j in nums2 {
            let sum1 = i + j
            
            if sum[sum1] != nil {
                sum[sum1]! += 1
            } else {
                sum[sum1] = 1
            }
        }
    }
    for k in nums3 {
        for l in nums4 {
            let sum2 = k + l
            
            if sum[-sum2] != nil {
                countOfTuples += sum[-sum2]!
            }
        }
    }

    return countOfTuples
}

//Example 1:
//
//Input: nums1 = [1,2], nums2 = [-2,-1], nums3 = [-1,2], nums4 = [0,2]
//Output: 2
//Explanation:
//The two tuples are:
//1. (0, 0, 0, 1) -> nums1[0] + nums2[0] + nums3[0] + nums4[1] = 1 + (-2) + (-1) + 2 = 0
//2. (1, 1, 0, 0) -> nums1[1] + nums2[1] + nums3[0] + nums4[0] = 2 + (-1) + (-1) + 0 = 0
//Example 2:
//
//Input: nums1 = [0], nums2 = [0], nums3 = [0], nums4 = [0]
//Output: 1

//Test cases:

let nums1 = [1,2], nums2 = [-2,-1], nums3 = [-1,2], nums4 = [0,2]
let answer = 2

if fourSumCount(nums1, nums2, nums3, nums4) == answer { print("Correct!") } else { print("Error! Expexted: \(answer)") }

