//496. Next Greater Element I
//Сomplexity: Easy
//https://leetcode.com/problems/next-greater-element-i/
//----------------------------------------------------
//Runtime: 44 ms, faster than 41.38% of Swift online submissions for Next Greater Element I.
//Memory Usage: 20.7 MB, less than 100.00% of Swift online submissions for Next Greater Element I.
//----------------------------------------------------

//You are given two arrays (without duplicates) nums1 and nums2 where nums1’s elements are subset of nums2. Find all the next greater numbers for nums1's elements in the corresponding places of nums2.
//
//The Next Greater Number of a number x in nums1 is the first greater number to its right in nums2. If it does not exist, output -1 for this number.

//----------------------------------------------------

func nextGreaterElement(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
    var greaterElements = [Int]()
    
    for num in nums1 {
        greaterElements.append(getNextMaxVal(num, nums2))
    }
    
    return greaterElements
}

func getNextMaxVal(_ num: Int, _ nums2: [Int]) -> Int {
    var i = 0
    
    while i < nums2.count {
        if nums2[i] == num {
            while i < nums2.count {
                if nums2[i] > num {
                    return nums2[i]
                }
                i += 1
            }
            break
        }
        i += 1
    }
    
    return -1
}

//Input:
let nums1 = [4,1,2], nums2 = [1,3,4,2]
//Output: [-1,3,-1]
//Explanation:
//    For number 4 in the first array, you cannot find the next greater number for it in the second array, so output -1.
//    For number 1 in the first array, the next greater number for it in the second array is 3.
//    For number 2 in the first array, there is no next greater number for it in the second array, so output -1.

nextGreaterElement(nums1, nums2)

