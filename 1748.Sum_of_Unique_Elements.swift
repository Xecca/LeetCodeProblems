// Solved by Xecca

//1748. Sum of Unique Elements
//Difficult: Easy
//https://leetcode.com/problems/sum-of-unique-elements/

//Runtime: 4 ms, faster than 100.00% of Swift online submissions for Sum of Unique Elements.
//Memory Usage: 14 MB, less than 72.06% of Swift online submissions for Sum of Unique Elements.

//

//You are given an integer array nums. The unique elements of an array are the elements that appear exactly once in the array.
//
//Return the sum of all the unique elements of nums.
//
//Constraints:
//
//1 <= nums.length <= 100
//1 <= nums[i] <= 100

//

func sumOfUnique(_ nums: [Int]) -> Int {
    var dict: [Int: Int] = [:]
    var sum = 0
    
    for num in nums {
        let currNumCount = dict[num] ?? 0
        dict.updateValue(currNumCount + 1, forKey: num)
    }
    for countNum in dict {
        if countNum.value == 1 {
            sum += countNum.key
        }
    }
    
    return sum
}

//Example 1:
//
//Input: nums = [1,2,3,2]
//Output: 4
//Explanation: The unique elements are [1,3], and the sum is 4.
//Example 2:
//
//Input: nums = [1,1,1,1,1]
//Output: 0
//Explanation: There are no unique elements, and the sum is 0.
//Example 3:
//
//Input: nums = [1,2,3,4,5]
//Output: 15
//Explanation: The unique elements are [1,2,3,4,5], and the sum is 15.

//Test cases:

if sumOfUnique([1,2,3,4,5]) == 15 { print("Correct!") } else { print("Error! Expected: \(15)") }

