// Solved by Xecca

//229. Majority Element II
//Сomplexity: Medium
//https://leetcode.com/problems/majority-element-ii/

//----------------------------------------------------
//Runtime: 80 ms, faster than 95.56% of Swift online submissions for Majority Element II.
//Memory Usage: 15 MB, less than 95.56% of Swift online submissions for Majority Element II.
//----------------------------------------------------

//Given an integer array of size n, find all elements that appear more than ⌊ n/3 ⌋ times.
//
//Follow-up: Could you solve the problem in linear time and in O(1) space?
//Constraints:
//
//1 <= nums.length <= 5 * 104
//-109 <= nums[i] <= 109

//----------------------------------------------------

func majorityElement(_ nums: [Int]) -> [Int] {
    var dict = [Int: Int]()
    var arrWithAppearedNums = [Int]()

    for num in nums {
        // let currentVal = dict[num] ?? 0
        dict.updateValue((dict[num] ?? 0) + 1, forKey: num)
    }
    for pair in dict {
        if pair.value > nums.count / 3 {
            arrWithAppearedNums.append(pair.key)
        }
    }

    return arrWithAppearedNums
}

//Example 1:
//Input: nums = [3,2,3]
//Output: [3]
//Example 2:
//Input: nums = [1]
//Output: [1]
//Example 3:
//Input: nums = [1,2]
//Output: [1,2]

//Test cases:

if majorityElement([3,2,3]) == [3] { print("Correct!") } else { print("Error! Expected: \([3])") }

