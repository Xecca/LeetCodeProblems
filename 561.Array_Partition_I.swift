//561. Array Partition I
//https://leetcode.com/problems/array-partition-i/
//Runtime: 572 ms, faster than 94.69% of Swift online submissions for Array Partition I.
//Memory Usage: 20.9 MB, less than 100.00% of Swift online submissions for Array Partition I.
////----------------------------------------------------
//Given an array of 2n integers, your task is to group these integers into n pairs of integer, say (a1, b1), (a2, b2), ..., (an, bn) which makes sum of min(ai, bi) for all i from 1 to n as large as possible.
//----------------------------------------------------

func arrayPairSum(_ nums: [Int]) -> Int {
    let length = nums.count - 1
    var i = 0
    var minSum = 0
    let newNums = nums.sorted()
    
    while i < length {
        if newNums[i] > newNums[i + 1] {
            minSum += newNums[i + 1]
        } else {
            minSum += newNums[i]
        }
        i += 2
        print(minSum)
    }
    
    return minSum
}

//Input:
let numbers = [1,4,3,2, 5, 2, 8, 10]
//Output: 15
//ex. 2:
//Input: [1,4,3,2]
//
//Output: 4
//Explanation: n is 2, and the maximum sum of pairs is 4 = min(1, 2) + min(3, 4).

arrayPairSum(numbers)

