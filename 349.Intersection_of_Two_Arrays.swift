//349. Intersection of Two Arrays
//Сomplexity: Easy
//https://leetcode.com/problems/intersection-of-two-arrays/

//----------------------------------------------------
//Runtime: 20 ms, faster than 99.35% of Swift online submissions for Intersection of Two Arrays.
//Memory Usage: 20.7 MB, less than 99.01% of Swift online submissions for Intersection of Two Arrays.
//----------------------------------------------------

//Given two arrays, write a function to compute their intersection.

//----------------------------------------------------

func intersection(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
    var newArr = [Int]()
    let newNums1 = Set(nums1)
    let newNums2 = Set(nums2)

    for num in newNums1 {
        if newNums2.contains(num) {
            newArr.append(num)
        }
    }

    return newArr
}

//Input:
let nums1 = [4,9,5], nums2 = [9,4,9,8,4]
//Output: [9,4]

intersection(nums1, nums2)

