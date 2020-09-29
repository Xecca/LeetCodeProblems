// Solved by Xecca

//485. Max Consecutive Ones
//Сomplexity: Easy
//https://leetcode.com/problems/max-consecutive-ones/

//----------------------------------------------------
//Runtime: 236 ms, faster than 100.00% of Swift online submissions for Max Consecutive Ones.
//Memory Usage: 14.2 MB, less than 97.39% of Swift online submissions for Max Consecutive Ones.
//----------------------------------------------------

//Given a binary array, find the maximum number of consecutive 1s in this array.

//----------------------------------------------------

func findMaxConsecutiveOnes(_ nums: [Int]) -> Int {
    var maxCount = 0
    var tempCount = 0
    var i = 0
    let length = nums.count
    
    while i < length {
        if nums[i] == 1 {
            tempCount += 1
        } else {
            if tempCount > maxCount {
                maxCount = tempCount
            }
            tempCount = 0
        }
        i += 1
    }
    if tempCount > maxCount {
        maxCount = tempCount
    }
    
    return maxCount
}

//Input:

let mat = [1,1,0,1,1,1]

//Output: 3
//Explanation: The first two digits or the last three digits are consecutive 1s.
//    The maximum number of consecutive 1s is 3.

findMaxConsecutiveOnes(mat)

