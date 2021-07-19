// Solved by Xecca

//1822. Sign of the Product of an Array
//Difficult: Easy
//https://leetcode.com/problems/sign-of-the-product-of-an-array/

//Runtime: 28 ms, faster than 100.00% of Swift online submissions for Sign of the Product of an Array.
//Memory Usage: 14.1 MB, less than 41.30% of Swift online submissions for Sign of the Product of an Array.

//

//There is a function signFunc(x) that returns:
//
//1 if x is positive.
//-1 if x is negative.
//0 if x is equal to 0.
//You are given an integer array nums. Let product be the product of all values in the array nums.
//
//Return signFunc(product).
//
//Constraints:
//
//1 <= nums.length <= 1000
//-100 <= nums[i] <= 100

//

func arraySign(_ nums: [Int]) -> Int {
    var product = 1
    
    for num in nums {
        if num == 0 {
            return 0
        }
        if num < 0 {
            product *= -1
        }
    }
    
    return product
}

//Example 1:
//
//Input: nums = [-1,-2,-3,-4,3,2,1]
//Output: 1
//Explanation: The product of all values in the array is 144, and signFunc(144) = 1
//Example 2:
//
//Input: nums = [1,5,0,2,-3]
//Output: 0
//Explanation: The product of all values in the array is 0, and signFunc(0) = 0
//Example 3:
//
//Input: nums = [-1,1,-1,1,-1]
//Output: -1
//Explanation: The product of all values in the array is -1, and signFunc(-1) = -1

//Test cases:

if arraySign([-1,-2,-3,-4,3,2,1]) == 1 { print("Correct!") } else { print("Error! Expected: \(1)") }

