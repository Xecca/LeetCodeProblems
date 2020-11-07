// Solved by Xecca

//88. Merge Sorted Array
//Сomplexity: Easy
//https://leetcode.com/problems/merge-sorted-array/

//----------------------------------------------------
//Runtime: 8 ms, faster than 94.16% of Swift online submissions for Merge Sorted Array.
//Memory Usage: 14 MB, less than 33.15% of Swift online submissions for Merge Sorted Array.
//----------------------------------------------------

//Given two sorted integer arrays nums1 and nums2, merge nums2 into nums1 as one sorted array.
//
//Note:
//
//The number of elements initialized in nums1 and nums2 are m and n respectively.
//You may assume that nums1 has enough space (size that is equal to m + n) to hold additional elements from nums2.
//
//Constraints:
//
//-10^9 <= nums1[i], nums2[i] <= 10^9
//nums1.length == m + n
//nums2.length == n

//----------------------------------------------------

func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
    var i = 0
    var start = m
    
    while start < n + m {
        nums1[start] = nums2[i]
        start += 1
        i += 1
    }
    
    nums1 = nums1.sorted()
    
    print(nums1)
}

//Example:
//
//Input:
//
var nums1 = [1,2,3,0,0,0], m = 3
//
var nums2 = [2,5,6],       n = 3
//
//Output: [1,2,2,3,5,6]

    //Test Cases:
//if merge([1,2,3,0,0,0], 3, [2,5,6], 3) == 5 { print("Correct!") } else { print("Error! Expected: 5") }
merge(&nums1, m, nums2, n)



