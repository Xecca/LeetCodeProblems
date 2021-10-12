// Solved by Xecca

//2032. Two Out of Three
//Difficult: Easy
//https://leetcode.com/problems/two-out-of-three/

//Runtime: 43 ms, faster than 60.00% of Swift online submissions for Two Out of Three.
//Memory Usage: 14 MB, less than 93.33% of Swift online submissions for Two Out of Three.

//

//Given three integer arrays nums1, nums2, and nums3, return a distinct array containing all the values that are present in at least two out of the three arrays. You may return the values in any order.
//
//Constraints:
//
//1 <= nums1.length, nums2.length, nums3.length <= 100
//1 <= nums1[i], nums2[j], nums3[k] <= 100

//

func twoOutOfThree(_ nums1: [Int], _ nums2: [Int], _ nums3: [Int]) -> [Int] {
    let arr: [Int] = [Int](Set(nums1 + nums2 + nums3))
    var finArr: [Int] = []
    
    for num in arr {
        if (nums1.contains(num) && (nums2.contains(num) || nums3.contains(num))) || (nums2.contains(num) && (nums1.contains(num) || nums3.contains(num))) {
            finArr.append(num)
        }
    }
    
    return finArr
}

//

//Example 1:
//
//Input: nums1 = [1,1,3,2], nums2 = [2,3], nums3 = [3]
//Output: [3,2]
//Explanation: The values that are present in at least two arrays are:
//- 3, in all three arrays.
//- 2, in nums1 and nums2.
//Example 2:
//
//Input: nums1 = [3,1], nums2 = [2,3], nums3 = [1,2]
//Output: [2,3,1]
//Explanation: The values that are present in at least two arrays are:
//- 2, in nums2 and nums3.
//- 3, in nums1 and nums2.
//- 1, in nums1 and nums3.
//Example 3:
//
//Input: nums1 = [1,2,2], nums2 = [4,3,3], nums3 = [5]
//Output: []
//Explanation: No value is present in at least two arrays.

//Test cases:

if twoOutOfThree([1,1,3,2], [2,3], [3]) == [3,2] { print("Correct!") } else { print("Error! Expexted: \([3,2])") }

