// Solved by Xecca

//350. Intersection of Two Arrays II
//Difficult: Easy
//https://leetcode.com/problems/intersection-of-two-arrays-ii/

//Runtime: 64 ms, faster than 12.69% of Swift online submissions for Intersection of Two Arrays II.
//Memory Usage: 14.3 MB, less than 42.31% of Swift online submissions for Intersection of Two Arrays II.

//
    //Given two arrays, write a function to compute their intersection.
//

func intersect(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
    var arr = [Int]()
    var nums1Copy = nums1
    var i = 0
    
    for num2 in nums2 {
        while i < nums1Copy.count {
            if nums1Copy[i] == num2 {
                arr.append(num2)
                nums1Copy.remove(at: i)
                break
            } else {
                i += 1
            }
        }
        i = 0
    }
    
    return arr
}

//Example 1:
//Input: nums1 = [1,2,2,1], nums2 = [2,2]
//Output: [2,2]
//Example 2:
//Input: nums1 = [4,9,5], nums2 = [9,4,9,8,4]
//Output: [9,4]

//Test cases:

if intersect([1,2,2,1], [2,2]) == [2,2] { print("Correct!") } else { print("Error! Expected: \("")") }
if intersect([4,9,5], [9,4,9,8,4]) == [9,4] { print("Correct!") } else { print("Error! Expected: \("")") }

