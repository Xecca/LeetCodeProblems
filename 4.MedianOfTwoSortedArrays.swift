// Solved by Xecca

import Foundation

//4. Median of Two Sorted Arrays
//Difficult: Hard
//https://leetcode.com/problems/median-of-two-sorted-arrays/

//Runtime: 72 ms, faster than 96.35% of Swift online submissions for Median of Two Sorted Arrays.
//Memory Usage: 14.7 MB, less than 8.27% of Swift online submissions for Median of Two Sorted Arrays.
    
//

//Given two sorted arrays nums1 and nums2 of size m and n respectively, return the median of the two sorted arrays.
//
//The overall run time complexity should be O(log (m+n)).
//
//Constraints:
//
//nums1.length == m
//nums2.length == n
//0 <= m <= 1000
//0 <= n <= 1000
//1 <= m + n <= 2000
//-10^6 <= nums1[i], nums2[i] <= 10^6
//

func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {
    let arr = (nums1 + nums2).sorted()
    let length = arr.count
    
    if length % 2 == 0 {
        return Double(arr[length / 2 ] + arr[length / 2 - 1]) / 2
    }
    
    return Double(arr[length / 2 ])
}

//Example 1:
//
//Input: nums1 = [1,3], nums2 = [2]
//Output: 2.00000
//Explanation: merged array = [1,2,3] and median is 2.
//Example 2:
//
//Input: nums1 = [1,2], nums2 = [3,4]
//Output: 2.50000
//Explanation: merged array = [1,2,3,4] and median is (2 + 3) / 2 = 2.5.
//Example 3:
//
//Input: nums1 = [0,0], nums2 = [0,0]
//Output: 0.00000
//Example 4:
//
//Input: nums1 = [], nums2 = [1]
//Output: 1.00000
//Example 5:
//
//Input: nums1 = [2], nums2 = []
//Output: 2.00000

//Test cases:

let input1 = [1,2]
let input2 = [3,4]
let answer = 2.50000

if findMedianSortedArrays(input1, input2) == answer { print("Correct!") } else { print("Error! Expexted: \(answer)") }

