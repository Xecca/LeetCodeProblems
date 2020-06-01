//1464. Maximum Product of Two Elements in an Array
//https://leetcode.com/problems/maximum-product-of-two-elements-in-an-array/
//Runtime: 64 ms, faster than 100.00% of Swift online submissions for Maximum Product of Two Elements in an Array.
//Memory Usage: 21 MB, less than 100.00% of Swift online submissions for Maximum Product of Two Elements in an Array.
//----------------------------------------------------
//Given the array of integers nums, you will choose two different indices i and j of that array. Return the maximum value of (nums[i]-1)*(nums[j]-1).
//----------------------------------------------------

func maxProduct(_ nums: [Int]) -> Int {
    var maxVal = 0
    let length = nums.count
    var i = 0
    var j = 1
    var compSum = 0
    
    while i < length {
        while j < length {
            compSum = (nums[i] - 1) * (nums[j] - 1)
            if compSum > maxVal && i != j {
                maxVal = compSum
            }
            j += 1
        }
        j = 0
        i += 1
    }
    return maxVal
}

//Input:
let nums = [1,5,4,5]
//Output: 12
//Explanation: If you choose the indices i=1 and j=2 (indexed from 0), you will get the maximum value, that is, (nums[1]-1)*(nums[2]-1) = (4-1)*(5-1) = 3*4 = 12.

maxProduct(nums)

