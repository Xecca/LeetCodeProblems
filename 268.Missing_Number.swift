// Solved by Xecca

//268. Missing Number
//Сomplexity: Easy
//https://leetcode.com/problems/missing-number/

//----------------------------------------------------
//Runtime: 156 ms, faster than 34.57% of Swift online submissions for Missing Number.
//Memory Usage: 14.5 MB, less than 26.34% of Swift online submissions for Missing Number..
//----------------------------------------------------

//Given an array nums containing n distinct numbers in the range [0, n], return the only number in the range that is missing from the array.
//
//Follow up: Could you implement a solution using only O(1) extra space complexity and O(n) runtime complexity?

//Constraints:
//
//n == nums.length
//1 <= n <= 104
//0 <= nums[i] <= n
//All the numbers of nums are unique.

//----------------------------------------------------

func missingNumber(_ nums: [Int]) -> Int {
    var dictNums = [Int: Int]()
    let n = nums.count
    
    for num in nums {
        dictNums.updateValue(1, forKey: num)
    }
    
    var i = 0
    
    while i < n {
        if dictNums[i] != 1 {
            return i
        }
        i += 1
    }
    
    return n
}

//Example 1:
//
//Input:
//let nums = [3,0,1]
//Output: 2
//Explanation: n = 3 since there are 3 numbers, so all numbers are in the range [0,3]. 2 is the missing number in the range since it does not appear in nums.
//Example 2:
//
//Input:
//let nums = [0,1]
//Output: 2
//Explanation: n = 2 since there are 2 numbers, so all numbers are in the range [0,2]. 2 is the missing number in the range since it does not appear in nums.
//Example 3:
//
//Input:
let nums = [9,6,4,2,3,5,7,0,1]
//Output: 8
//Explanation: n = 9 since there are 9 numbers, so all numbers are in the range [0,9]. 8 is the missing number in the range since it does not appear in nums.

missingNumber(nums)

