// Solved by Xecca

//169. Majority Element
//Сomplexity: Easy
//https://leetcode.com/problems/majority-element/

//----------------------------------------------------
//Runtime: 128 ms, faster than 84.68% of Swift online submissions for Majority Element.
//Memory Usage: 15.7 MB, less than 87.23% of Swift online submissions for Majority Element.
//----------------------------------------------------

//Given an array of size n, find the majority element. The majority element is the element that appears more than ⌊ n/2 ⌋ times.
//
//You may assume that the array is non-empty and the majority element always exist in the array.

//----------------------------------------------------

func majorityElement(_ nums: [Int]) -> Int {
    var maxCount = 0
    var maxNum = 0
    var dict = [Int: Int]()
    
    for num in nums {
        let currentVal = dict[num] ?? 0
        dict.updateValue(currentVal + 1, forKey: num)
    }
    for pair in dict {
        if pair.value > maxCount {
            maxCount = pair.value
            maxNum = pair.key
        }
    }
    
    return maxNum
}

//Example 1:
//Input: [3,2,3]
//Output: 3
//Example 2:
//Input: [2,2,1,1,1,2,2]
//Output: 2

//Test cases:
//

if majorityElement([3,2,3]) == 3 { print("Correct!") } else { print("Error! Expected: \(3)") }

