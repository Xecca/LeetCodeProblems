// Solved by Xecca

//1437. Check If All 1's Are at Least Length K Places Away
//Difficult: Easy
//https://leetcode.com/problems/check-if-all-1s-are-at-least-length-k-places-away/

//Runtime: 408 ms, faster than 100.00% of Swift online submissions for Check If All 1's Are at Least Length K Places Away.
//Memory Usage: 17.8 MB, less than 10.00% of Swift online submissions for Check If All 1's Are at Least Length K Places Away.

//

//Given an array nums of 0s and 1s and an integer k, return True if all 1's are at least k places away from each other, otherwise return False.

//Constraints:
//
//1 <= nums.length <= 10^5
//0 <= k <= nums.length
//nums[i] is 0 or 1

//

func kLengthApart(_ nums: [Int], _ k: Int) -> Bool {
    
    if k == 0 {
        return true
    }
    
    let length = nums.count
    var i = 0
    var counter = 0
    
    while i < length {
        if nums[i] == 1 {
            i += 1
            if i >= length {
                break
            }
            while i < length && nums[i] == 0 && counter < k {
                i += 1
                counter += 1
            }
            if counter < k {
                if i >= length {
                    if nums[i - 1] != 0 {
                        return false
                    }
                } else if nums[i] == 1 {
                    return false
                }
                
            }
            counter = 0
        } else {
            i += 1
        }
    }
    
    return true
}

//Example 1:
//Input: nums = [1,0,0,0,1,0,0,1], k = 2
//Output: true
//Explanation: Each of the 1s are at least 2 places away from each other.
//Example 2:
//Input: nums = [1,0,0,1,0,1], k = 2
//Output: false
//Explanation: The second 1 and third 1 are only one apart from each other.
//Example 3:
//Input: nums = [1,1,1,1,1], k = 0
//Output: true
//Example 4:
//Input: nums = [0,1,0,1], k = 1
//Output: true

//Test cases:

if kLengthApart([1,0,0,0,1,0,0,1], 2) == true { print("Correct!") } else { print("Error! Expected: \(true)") }

