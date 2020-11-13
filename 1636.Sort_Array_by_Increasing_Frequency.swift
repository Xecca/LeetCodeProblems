// Solved by Xecca

//1636. Sort Array by Increasing Frequency
//Сomplexity: Easy
//https://leetcode.com/problems/sort-array-by-increasing-frequency/

//----------------------------------------------------
//Runtime: 44 ms, faster than 27.03% of Swift online submissions for Sort Array by Increasing Frequency.
//Memory Usage: 14.3 MB, less than 83.78% of Swift online submissions for Sort Array by Increasing Frequency.
//----------------------------------------------------

//Given an array of integers nums, sort the array in increasing order based on the frequency of the values. If multiple values have the same frequency, sort them in decreasing order.
//
//Return the sorted array.

//----------------------------------------------------

func frequencySort(_ nums: [Int]) -> [Int] {
    var dict = [Int: Int]()
    var result = [Int]()
    var i = 0
    
    let numsSorted = nums.sorted { $0 > $1 }
    for num in numsSorted {
        dict.updateValue(0, forKey: num)
    }
    for num in numsSorted {
        let currentNum = dict[num]
        dict.updateValue(currentNum! + 1, forKey: num)
    }
    let descendingKeys = dict.sorted(by: >)
    let sortedByValueDict = descendingKeys.sorted { $0.1 < $1.1 }
    
    for pair in sortedByValueDict {
        i = 0
        while i < pair.value {
            result.append(pair.key)
            i += 1
        }
    }
    
    return result
}

//Example 1:
//Input: nums = [1,1,2,2,2,3]
//Output: [3,1,1,2,2,2]
//Explanation: '3' has a frequency of 1, '1' has a frequency of 2, and '2' has a frequency of 3.
//Example 2:
//Input: nums = [2,3,1,3,2]
//Output: [1,3,3,2,2]
//Explanation: '2' and '3' both have a frequency of 2, so they are sorted in decreasing order.
//Example 3:
//Input: nums = [-1,1,-6,4,5,-6,1,4,1]
//Output: [5,-1,4,4,-6,-6,1,1,1]

//Test cases:
//
if frequencySort([1,1,2,2,2,3]) == [3,1,1,2,2,2] { print("Correct!") } else { print("Error! Expected: \([3,1,1,2,2,2])") }
if frequencySort([2,3,1,3,2]) == [1,3,3,2,2] { print("Correct!") } else { print("Error! Expected: \([1,3,3,2,2])") }
if frequencySort([-1,1,-6,4,5,-6,1,4,1]) == [5,-1,4,4,-6,-6,1,1,1] { print("Correct!") } else { print("Error! Expected: \([5,-1,4,4,-6,-6,1,1,1])") }

